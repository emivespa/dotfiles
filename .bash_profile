# shellcheck shell=bash

# tmux will load your .bash_profile but not your .profile:
if test -n "$TMUX"; then
	# What you probably want it to do is load your .bashrc instead:
	. "${HOME}/.bashrc"
else
	# Having a .bash_profile means your .profile won't load automatically in bash:
	. "${HOME}/.profile"
fi
