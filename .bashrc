# shellcheck shell=bash
#
# /etc/skel/.bashrc

[[ $- == *i* ]] || return
test "$TERM" != 'dumb' && test -z "$TMUX" && exec tmux

export HISTFILE="${HOME}/.bash_history"  # Default.
export HISTFILESIZE=20000                # HISTFILE max lines (10x the default).
export HISTSIZE=10000                    # In memory max lines (10x the default).
export HISTCONTROL=ignorespace           # Ignore commands starting with a space.
# TODO: HISTIGNORE ls & friends, unless in a pipeline.

PS1=''
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ ' # From the skel for reference.
#
# TODO: make sh compatible (to prevent tofu when running sh within bash)
# FIXME: >SC2154 (warning): debian_chroot is referenced but not assigned.
#
# PS1 escaping can get confusing, TLDR:
#	1  '$()' '${}' "\$()" "\${}"  run every time the prompt is printed.
#	2  "$()" "${}"                run in the asignment.
#	3  '\$'                       acts as the PS1-specific \$ sequence.
#	4  "\$"                       may act like #1 or a literal '$' depending on what's after it.
#
# Also important: https://www.youtube.com/watch?v=ngLwml9XI-I&list=PLWBKAf81pmOaP9naRiNAqug6EBnkPakvY&index=252
export GIT_PS1_SHOWDIRTYSTATE=1        # unstaged:* staged:+
export GIT_PS1_SHOWSTASHSTATE=1        # stashed:$
export GIT_PS1_SHOWUNTRACKEDFILES=1    # untracked:%
export GIT_PS1_SHOWUPSTREAM='verbose'  # behind:< ahead:> diverged:<> nodifference:= | verbose behind:- ahead:+
# export GIT_PS1_STATESEPARATOR=' '
export GIT_PS1_COMPRESSSPARSESTATE=1   # sparse:?
# export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_HIDE_IF_PWD_IGNORED=1
_style='\[\033[97;100m\]' # fg15;bg8
_reset='\[\033[0m\]' # style reset
_err() {
	local err="$?"
	test "$err" -ne '0' && printf %s "${err}! "
}
_git() {
	# TODO: why isn't __git_ps1 available in a shell within vim (:term)?
	# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
	>/dev/null 2>&1 type __git_ps1 || return
	printf %s '$(__git_ps1)'
}
PS1+="${_style}\$(_err)\${debian_chroot:+(debian_chroot)}\u@\H \w$(_git)" # Note s/h/H/
PS1+=' \$'
PS1+="${_reset} "
export PS1

alias aptc=apt-cache
alias aptg=apt-get
alias batsx='BATS_RUN_SKIPPED=true bats'
alias git='TZ=UTC git' # https://github.com/jessfraz/dotfiles/blob/master/bin/gitdate
alias py3=python3
alias py=python
alias whatzip='zip -r -s 100m' # Split zips for Whatsapp's 100 mb limit.
alias xo=xdg-open # TODO: move to ~/bin.

>/dev/null 2>&1 command grep --version && {
	alias grep='grep --color=auto'
	alias egrep='egrep --color=auto'
	alias fgrep='fgrep --color=auto'
}

_ls='ls'
# shellcheck disable=2016 # Intentional, >Expressions don't expand in single quotes, use double quotes for that.
>/dev/null 2>&1 command -v x80        && _ls+=' -w $(x80)'
>/dev/null 2>&1 command ls --version  && _ls+=' --color=auto'
# shellcheck disable=2139 # Intentional, >This expands when defined, not when used. Consider escaping.
alias ls="$_ls"

tmp() {
	# cd into a personal folder within /tmp to use as a scratch workspace
	# free of random systemd folders and things of the sort.
	local d="${TMPDIR:-/tmp}/${USER}"
	mkdir -p "$d"
	cd "$d" || exit
}

shopt -s autocd

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

return
# Rude installs will cat lines here:
. "$HOME/.cargo/env"
