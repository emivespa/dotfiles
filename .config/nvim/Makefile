all: lazy colors/default-ansi.vim colors/custom.vim

.PHONY: lazy
lazy:
	test -d "$${XDG_DATA_HOME:-$${HOME}/.local/share}/lazy/lazy.nvim" || \
	git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable \
		"$${XDG_DATA_HOME:-$${HOME}/.local/share}/lazy/lazy.nvim"

colors/default-ansi.vim: colors/default-explicit.vim
	./explicit2ansi <$< >$@

colors/custom.vim: colors/default-ansi.vim colors/default-fix.vim colors/syntax-chill.vim
	cat $^ >$@

clean:
	rm colors/default-ansi.vim colors/custom.vim

