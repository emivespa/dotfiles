# shellcheck shell=sh
#
# /etc/skel/.profile
#
# TODO: umask?
#
# According to asottile debian/ubuntu changed the default umask for unknown
# reasons.

export BROWSER=firefox
export EDITOR=vi VISUAL=vi
export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
export PAGER=less
# export PAGER=vimpager # TODO

# command -v vimpager >/dev/null && export PAGER=vimpager

# MAN*
export MANPAGER='less -S'
export MANWIDTH='80'
man --version >/dev/null && export MANOPT="--no-hyphenation --no-justification"

# PATH
#
# https://git.sr.ht/~sircmpwn/dotfiles/tree/master/item/.profile
#
# TODO: prevent repeat elements.
PATH="${HOME}/bin:${PATH}"                          # personal bins
# PATH="${HOME}/bin/$(uname -s):${PATH}"              # personal bins by kernel
PATH="${HOME}/bin/$(uname -s)+$(uname -m):${PATH}"  # personal bins by kernel+arch
# PATH="${HOME}/bin/$(uname -n):${PATH}"              # personal bins by hostname
PATH="${HOME}/bin/ignore:${PATH}"                   # personal bins ignored by CVS
PATH="${HOME}/.local/bin:${PATH}"                   # docker, pip, etc. use this
PATH="/usr/local/go/bin:${PATH}"                    # go install requires this
PATH="${CARGO_HOME:-${HOME}/.cargo}/bin:${PATH}"    # rust bins
PATH="${GOPATH:-${HOME}/go}/bin:${PATH}"            # go bins
export PATH

TERMINAL='xterm'
for t in 'alacritty' 'urxvt' 'kitty' 'gnome-terminal'
do
	if command -v "$t" >/dev/null 2>&1
	then
		TERMINAL="$t"
		break
	fi
done
export TERMINAL

# FZF
export FZF_DEFAULT_OPTS='-i --color=16 --layout=reverse'

# GO
#
# https://git.sr.ht/~sircmpwn/dotfiles/tree/master/item/.profile
# >Fuck you Google, eat shit
export GOPROXY=direct
export GOSUMDB=off

# XDG base directory specification enforcement
#
# original spec      https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# arch wiki article  https://wiki.archlinux.org/index.php/xdg_base_directory
#
# TODO mv relevant files to default paths and comment out.
#	TODO cache
#	DONE config (the bulk of them)
#	TODO data
# Rationales:
#	I don't want these paths to suddently change as I install dotfiles.
#	It's easier to read documentation if you just use the defaults for everything.
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"            # rust,rustup
export XCOMPOSECACHE="${XDG_CACHE_HOME}/xorg/xcompose"  # xorg,xcompose

return
# Rude installs will cat lines here:
. "/home/evb/.local/share/cargo/env"
. "$HOME/.cargo/env"
