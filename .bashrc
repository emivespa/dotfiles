# shellcheck shell=bash
#
# /etc/bash.bashrc
# /etc/skel/.bashrc

case "$-" in
	(*'i'*) ;;
	(*) return ;;
esac

# If not within tmux, emacs or vscode, start tmux, attaching to an orphaned
# session if there is one:
if [ -z "$TMUX" ] && [ "$TERM" != 'dumb' ] && [ "$TERM_PROGRAM" != 'vscode' ]; then
	orphan="$(tmux ls | grep -v 'attached' | head -n1 | sed -E 's/:.*//')"
	exec tmux new -A -s"${orphan:-"$(date +'%H%M%S')"}"
fi

# Custom config for specific hostnames:
case "$(uname -n)" in
	('ip-'*'.ec2.internal') # AWS CloudShell
		# The CloudShell .bashrc exports AWS_EXECUTION_ENV and I'll overwrite it with
		# this file so putting this here for compatibility just in case:
		export AWS_EXECUTION_ENV=CloudShell
		# CloudShell's tmux doesn't load .tmux.conf for some reason:
		if test -n "$TMUX"; then
			tmux source-file "${HOME}/.tmux.conf"
		fi
		. "${HOME:-~}/.profile" # Does not load by default.
		;;
esac

################################################################################

# env

export HISTCONTROL=ignorespace
export HISTIGNORE='clear:ls:ls -a:pwd:git log:git status' # "Where am I?" command spam.
export HISTSIZE=5000
export HISTTIMEFORMAT='%Y-%m-%dT%H:%M:%S '
# TODO: archive history somehow.

# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
PS1=''
#
# FIXME: >SC2154 (warning): debian_chroot is referenced but not assigned.
#
# Also important:
# https://www.youtube.com/watch?v=ngLwml9XI-I&list=PLWBKAf81pmOaP9naRiNAqug6EBnkPakvY&index=252
_PS1_ex() {
	# Last exit status if it wasn't 0.
	local ex="$?"
	test "$ex" -ne '0' && printf %s "${ex} "
}
_PS1_k8s() {
	# kubectx:kubens if there is one.
	# TODO: fast pure bash version? current:
	#	real    0m0,070s
	command -v kubectl >/dev/null || return
	local ctx ns
	ctx="$(kubectl config current-context 2>/dev/null)"
	ns="$(kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null)"
	test -n "$ctx" && printf %s "${ctx}:${ns} "

}
_PS1_git() {
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
	if test -e "$head_file"; then
		local head
		read -r head <"$head_file" || return
		case "$head" in
			(ref:*) printf %s " ${head#ref: refs/heads/}" ;;
			('') ;;
			(*) printf %s " ${head:0:7}" ;; # Detached HEAD. BUG(wontfix): stuck to default of 7 char short SHAs.
		esac
		# return 0
	fi
	return 1
}
PS1+="\[$(tput sgr0; tput setab 0; tput setaf 1             )\]\$(_PS1_ex)"
PS1+="\[$(tput sgr0; tput setab 0; tput setaf 6             )\]\$(_PS1_k8s)"
PS1+="\[$(tput sgr0; tput setab 0; tput setaf 2; tput bold  )\]\u@\H"
PS1+="\[$(tput sgr0; tput setab 0; tput setaf 4; tput bold  )\] \w"
PS1+="\[$(tput sgr0; tput setab 0; tput setaf 2             )\]\$(_PS1_git)"
PS1+="\[$(tput sgr0                                      )\]\n\$ "
# PS1="[\$(_PS1_ex)\$(_PS1_k8s)\u@\H \w\$(_PS1_git)]\$ "
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
	alias ls='ls -w80 --color=auto --group-directories-first'
fi

tmp() {
	# cd into a personal folder within /tmp to use as a scratch workspace
	# free of random systemd folders and things of the sort.
	local d="${TMPDIR:-/tmp}/${USER}"
	mkdir -p "$d"
	cd "$d" || exit 1
}

vimrc() {
	cd "${HOME}/.vim/." || exit 1
	vim vimrc
}
nvimrc() {
	cd "${HOME}/.config/nvim/." || exit 1
	nvim init.lua
}

################################################################################

# program-specific

# aws
complete -C '/usr/local/bin/aws_completer' aws
export SAM_CLI_TELEMETRY=0
export capiam='--capabilities CAPABILITY_IAM'

# fzf
#
# /usr/share/doc/fzf/README.Debian
test -f /usr/share/doc/fzf/examples/key-bindings.bash &&
	\. /usr/share/doc/fzf/examples/key-bindings.bash
# export FZF_TMUX_HEIGHT=24

# kubectl
source <(kubectl completion bash)
alias k=kubectl
# if command -v kubecolor >/dev/null 2>&1; then
# 	alias k=kubecolor
# fi
complete -o default -F __start_kubectl k
# kubectx
alias kctx=kubectx
alias kns=kubens
# Shortcuts
export ow='-o wide'
export draml='--dry-run=client -o yaml'

# nvm
#
# TODO: nvm.sh noticeably slows bash startup (every solution I've seen so far breaks things in sneaky ways).
# export NVM_DIR="$HOME/.config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# fnm
#
# (Faster alternative, <https://github.com/Schniz/fnm>.)
FNM_PATH="${HOME}/.local/share/fnm"
if test -d "${FNM_PATH}"; then
	export PATH="${HOME}/.local/share/fnm:${PATH}"
	eval "`fnm env`"
fi

################################################################################

return # Rude installs will append to your .bashrc.
