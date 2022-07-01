# shellcheck shell=bash

if test -n "$TMUX"
then
	# tmux ran within bash will load .bash_profile or .profile, but you
	# probably want it to load your .bashrc instead.
	source "${HOME}/.bashrc"
	return
else
	# If it exists, your bash login shell will run .bash_profile instead of
	# .profile.
	source "${HOME}/.profile"
	return
fi
