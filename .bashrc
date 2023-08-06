# shellcheck shell=bash
#
# /etc/bash.bashrc
# /etc/skel/.bashrc

if test "$DOTPROFILE_LOADED" = ''; then
	. "${HOME}/.profile"
fi

case "$-" in
	(*'i'*) ;;
	(*) return ;;
esac

if [ -z "$TMUX" ] && [ "$TERM" != 'dumb' ]; then
	orphan="$(tmux "ls" | grep -v 'attached' | head -n1 | sed -E 's/:.*//')"
	exec tmux new -A -s"${orphan:-"$(date +'%H%M%S')"}"
fi

# Hostname-specific config:
case "$(uname -n)" in
	('ip-'*'.ec2.internal') # AWS CloudShell
		# The default .bashrc has this line and I'll overwrite it with
		# this file so keeping it here for compatibility just in case:
		export AWS_EXECUTION_ENV=CloudShell
		# tmux doesn't load .tmux.conf for some reason:
		if test -n "$TMUX"; then
			tmux source-file "${HOME}/.tmux.conf"
		fi
		;;
esac

################################################################################

# env

secrets="${HOME}/.env"
if test -f "${secrets}"; then
	\. "${secrets}"
fi

export HISTCONTROL=ignorespace
export HISTIGNORE='clear:ls:ls -a:pwd:git log:git status' # "Where am I?" command spam.
export HISTFILESIZE='' HISTSIZE='' # Eternal bash history because why not.
export HISTTIMEFORMAT='%Y-%m-%dT%H:%M:%S '
# TODO: archive history somehow.

################################################################################

# prompt
#
PS1=''
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#
# TODO: rewrite with PROMPT_COMMAND
# FIXME: >SC2154 (warning): debian_chroot is referenced but not assigned.
#
# Also important:
# https://www.youtube.com/watch?v=ngLwml9XI-I&list=PLWBKAf81pmOaP9naRiNAqug6EBnkPakvY&index=252

_PS1_ex() {
	# Last exit status if it wasn't 0.
	local ex="$?"
	test "$ex" -ne '0' && printf %s "${ex} "
}

_PS1_jobs() {
	output=''
	local rjobs="$(jobs -r | wc -l)"
	if test "$rjobs" -ne '0'; then
		output="${rjobs} Running"
	fi
	local sjobs="$(jobs -s | wc -l)"
	if test "$sjobs" -ne '0'; then
		if test "$rjobs" -ne '0'; then
			output="${output}, ${sjobs} Stopped"
		else
			output="${sjobs} Stopped"
		fi
	fi
	test -n "$output" && printf %s " (${output})"
}

_PS1_k8s() {
	# kubectx:kubens if there is one.
	test -f "${HOME}/.kube/config" || exit 1
	local ctx ns
	ctx="$(grep '^current-context:' <"${HOME}/.kube/config" | awk '{ print $2 }')"
	if test "$ctx" = '""'; then # TODO: why doesn't -n work?
		return 1
	fi
	ns="$(sed -n "/namespace/,/name: minikube/ {/namespace/p}" <"${HOME}/.kube/config" | awk '{ print $2 }')"
	printf %s " ${ctx}:${ns}"
}

_PS1_git() {
	local output=''
	# Git branch if a .git is found.
	# Pure bash (meaning no forking meaning fast) alternative to __git_ps1 (100ms -> 1ms).
	# https://gist.github.com/bingzhangdai/dd4e283a14290c079a76c4ba17f19d69
	local dir="$PWD"
	while test -n "$dir"; do
		local head_file="$dir/.git/HEAD"
		if test -f "$dir/.git"; then
			read -r head_file <"$dir/.git" && head_file="$dir/${head_file#gitdir: }/HEAD"
		fi
		test -e "$head_file" && break
		dir="${dir%/*}"
	done
	if test -f "$head_file"; then
		local head
		read -r head <"$head_file" || return
		case "$head" in
			(ref:*) output="${head#ref: refs/heads/}" ;;
			('') ;;
			(*)
				# Detached HEAD.
				# BUG(wontfix): stuck to 7 char short SHAs.
				output="${head:0:7}"
				;;
		esac
		if test -f "${dir}/.git/shallow"; then
			output="${output}, shallow"
		fi
		test -n "$output" && printf %s " ($output)"
		return 0
	fi
	return 1
}

_PS1_sudo() {
	if command -v sudo >/dev/null 2>&1 && sudo -n true 2>/dev/null; then
		printf %s " sudo"
	fi
}

_PS1_nix() {
	if test -n "$IN_NIX_SHELL"; then
		printf %s " IN_NIX_SHELL"
	fi
}

PS1+='['
PS1+="\[$(tput sgr0 setaf 1       )\]\$(_PS1_ex 2>/dev/null)" # Can't do `command -v` here, would change $?.
PS1+="\[$(tput sgr0 setaf 2 bold  )\]\u@\H"
PS1+="\[$(tput sgr0 setaf 4 bold  )\] \w"
PS1+="\[$(tput sgr0 setaf 2  )\]\$(command -v _PS1_git >/dev/null 2>&1 && _PS1_git)"    # git
PS1+="\[$(tput sgr0 setaf 3  )\]\$(command -v _PS1_jobs >/dev/null 2>&1 && _PS1_jobs)"  # jobs
PS1+="\[$(tput sgr0 setaf 4  )\]\$(command -v _PS1_k8s >/dev/null 2>&1 && _PS1_k8s)"    # k8s
PS1+="\[$(tput sgr0 setaf 6  )\]\$(command -v _PS1_nix >/dev/null 2>&1 && _PS1_nix)"    # nix
PS1+="\[$(tput sgr0 setaf 5  )\]\$(command -v _PS1_sudo >/dev/null 2>&1 && _PS1_sudo)"  # sudo
PS1+="\[$(tput sgr0               )\]]\n\$ "
export PS1

################################################################################

# aliases and functions

alias batsx='BATS_RUN_SKIPPED=true bats'
alias dcd='docker compose down'
alias dcu='docker compose up'
alias git='TZ=UTC git' # https://github.com/jessfraz/dotfiles/blob/master/bin/gitdate
alias xo=xdg-open # TODO: move to ~/bin.

if command grep --version >/dev/null 2>&1; then
	alias grep='grep --color=auto'
	alias egrep='egrep --color=auto'
	alias fgrep='fgrep --color=auto'
fi

if command ls --version >/dev/null 2>&1; then
	alias ls='ls -w80 --color=auto'
fi

tmp() {
	# cd into a personal folder within /tmp to use as a scratch workspace
	# free of random systemd folders and things of the sort.
	local d="${TMPDIR:-/tmp}/${USER}"
	mkdir -p "$d"
	cd "$d" || exit 1
}

todo() {
	pushd ~/TODO || exit 1
	${VISUAL:-${EDITOR:-nano}} README
	make
	popd || exit 1
}

################################################################################

# program-specific

# aws
# complete -C '/usr/local/bin/aws_completer' aws

# direnv
eval "$(direnv hook bash)"

# fzf
#
# /usr/share/doc/fzf/README.Debian
if command -v fzf-share >/dev/null; then
	source "$(fzf-share)/key-bindings.bash"
	source "$(fzf-share)/completion.bash"
else
	test -f /usr/share/doc/fzf/examples/completion.bash && \. /usr/share/doc/fzf/examples/completion.bash
	test -f /usr/share/doc/fzf/examples/key-bindings.bash && \. /usr/share/doc/fzf/examples/key-bindings.bash
fi
export FZF_COMPLETION_OPTS='--height=100%'

# home-manager
#
# TODO: should this be in ~/.profile instead?
# . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# kubectl
# if command -v kubecolor >/dev/null 2>&1; then
# 	alias k=kubecolor
# fi
if command -v kubectl >/dev/null 2>&1; then
	# source <(kubectl completion bash)
	eval "$(kubectl completion bash)"
	complete -o default -F __start_kubectl k
fi
# Shortcuts
export ow='-o wide'
export draml='--dry-run=client -o yaml'

# nvm
#
# TODO: nvm.sh noticeably slows bash startup (every solution I've seen so far breaks things in sneaky ways).
# export NVM_DIR="$HOME/.config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fnm
#
# (Faster alternative, <https://github.com/Schniz/fnm>.)
FNM_PATH="${HOME}/.local/share/fnm"
if test -d "${FNM_PATH}"; then
	export PATH="${HOME}/.local/share/fnm:${PATH}"
	eval "$(fnm env)"
fi

# pnpm
export PNPM_HOME="/home/pilcha/.local/share/pnpm"
case ":$PATH:" in
	(*":$PNPM_HOME:"*) ;;
	(*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# terraform
# complete -C /home/pilcha/bin/ignore/terraform terraform

# youtube-dl and yt-dlp
export mp3='--audio-format mp3 --audio-quality 0 -x -f bestaudio --no-playlist'
export mp3p='--audio-format mp3 --audio-quality 0 -x -f bestaudio --yes-playlist'
alias yt-mp3="yt-dlp ${mp3}"
alias yt-mp3p="yt-dlp ${mp3p}"

alias clear='sleep 1; false'

################################################################################

return # Rude installs will append to your .bashrc.
