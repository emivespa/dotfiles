# shellcheck shell=sh
#
# /etc/profile
# /etc/skel/.profile
#
# TODO: umask?
#
# According to asottile debian/ubuntu changed the default umask for unknown
# reasons.

################################################################################

# standard

export EDITOR=vi; export VISUAL="$EDITOR"
export LANG=en_US.UTF-8
export LC_COLLATE=C # Sort asciibetically.
export LC_TIME=en_DK.UTF-8 # ISO 8601 YYYY-MM-DD dates.
export PAGER=less

BROWSER=firefox # Fallback, but it's a snap on Ubuntu, so prefer firefox-esr:
if command -v firefox-esr >/dev/null 2>&1; then
	BROWSER=firefox-esr
fi
export BROWSER

# PATH
#
# https://git.sr.ht/~sircmpwn/dotfiles/tree/master/item/.profile
#
# TODO: prevent repeats.
PATH="${GOPATH:-${HOME}/go}/bin:${PATH}"            # go bins
PATH="${CARGO_HOME:-${HOME}/.cargo}/bin:${PATH}"    # rust bins
PATH="/usr/local/go/bin:${PATH}"                    # go install requires this
PATH="${HOME}/.local/bin:${PATH}"                   # docker, pip, etc. use this
PATH="${HOME}/bin/ignore:${PATH}"                   # personal ignored by CVS
# PATH="${HOME}/bin/$(uname -s)+$(uname -m):${PATH}"  # personal by kernel+arch
PATH="${HOME}/bin:${PATH}"                          # personal
export PATH

# MAN*
if man --version >/dev/null 2>&1; then
	export MANOPT="--no-hyphenation --no-justification"
fi
export MANPAGER="vim -R --not-a-term -c'runtime plugin/manpager.vim | MANPAGER' -"
	# --not-a-term prevents "Reading from stdin...". (Not available in nvim.)
	# Make sure the plugin is loaded, just in case.
export MANSECT='1p:1:n:l:8:3p:3:0p:0:2:3posix:3pm:3perl:3am:5:4:9:6:7' # Default but search Np before N.
export MANWIDTH='80'

################################################################################

# non "standard"

# FZF
export FZF_DEFAULT_OPTS='-i --color=16 --layout=reverse'

# GO
#
# https://git.sr.ht/~sircmpwn/dotfiles/tree/master/item/.profile
export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off

# SAM
export SAM_CLI_TELEMETRY=0

# XDG basedir spec
#
# Some tools check if these variable exists to see whether you "opt in" to using
# XDG paths, so making the defaults explicit does have an effect.
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"

################################################################################

return # Rude installs will append to your .profile.
