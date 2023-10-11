all: lazy

.PHONY: lazy
lazy:
	test -d "$${XDG_DATA_HOME:-$${HOME}/.local/share}/lazy/lazy.nvim" || \
	git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable \
		"$${XDG_DATA_HOME:-$${HOME}/.local/share}/lazy/lazy.nvim"
