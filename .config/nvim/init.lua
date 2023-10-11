-- TODO: Lua LSP.
-- TODO: redo keybinds.

-- Emulame `set t_Co=16`:
local ffi=require("ffi")
ffi.cdef("int t_colors")
ffi.C.t_colors = 16

-- Set colorscheme before Lazy runs:
vim.cmd.colorscheme('custom') -- ./colors/custom.vim

require("options")
require("keymaps")

-- https://github.com/folke/lazy.nvim - "zzz A modern plugin manager for Neovim"
-- :help lazy.nvim.txt

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
	install = {
		missing = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
