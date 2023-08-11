-- Emulate `set t_Co=16`:
local ffi=require("ffi")
ffi.cdef("int t_colors")
ffi.C.t_colors = 16
vim.cmd.syntax('off') -- Explicitly disable non-tressitter syntax.

-- Set colorscheme before Lazy runs:
vim.cmd.colorscheme('custom') -- ./colors/custom.vim
-- vim.o.termguicolors = true
-- vim.cmd.colorscheme('quiet')

require("options")
require("keymaps")

-- https://github.com/folke/lazy.nvim - "zzz A modern plugin manager for Neovim"
-- :help lazy.nvim.txt
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.notify("automatic lazy.nvim cloning is disabled, see .config/nvim/Makefile")
else
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
end
