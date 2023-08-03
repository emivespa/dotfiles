-- ## config that must come before plugins

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ## colorscheme

-- Emulate `set t_Co=16`:
local ffi=require("ffi")
ffi.cdef("int t_colors")
ffi.C.t_colors = 16
vim.cmd.syntax('off') -- Explicitly disable non-tressitter syntax.
vim.cmd.colorscheme('custom') -- ./colors/custom.vim

-- ## keymaps

vim.keymap.set('n', '<c-q>', ':bwipeout<cr>') -- Close buffer.
vim.keymap.set('n', '-', ':Rex<cr>') -- Poor man's vinegar (better since not relative to file).
-- <tab> and <s-tab> navigate buffers:
vim.keymap.set('n', '<tab>', ':bnext<cr>')
vim.keymap.set('n', '<s-tab>', ':bprevious<cr>')
-- 'y' uses system clipboard:
vim.keymap.set("n", "y", [["+y]])
vim.keymap.set("v", "y", [["+y]])
vim.keymap.set("n", "<leader>i", [[:Inspect<cr>]])

-- ## plugins

-- https://github.com/folke/lazy.nvim - "zzz A modern plugin manager for Neovim"
-- :help lazy.nvim.txt
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	-- vim.fn.system {
	-- 	'git',
	-- 	'clone',
	-- 	'--filter=blob:none',
	-- 	'https://github.com/folke/lazy.nvim.git',
	-- 	'--branch=stable', -- latest stable release
	-- 	lazypath,
	-- }
	vim.notify("automatic lazy.nvim cloning is disabled, see .config/nvim/Makefile")
end
if vim.loop.fs_stat(lazypath) then
	vim.opt.rtp:prepend(lazypath)
end
require("lazy").setup("plugins")

-- ## big wall of options:

vim.o.listchars = "tab:>  ,lead:-,trail:-,extends:@,precedes:@,nbsp:-"
vim.g.netrw_banner = 0
vim.g.netrw_hide = 1
vim.g.netrw_liststyle = 3 -- Start in tree mode.
vim.o.autowrite = true
vim.o.belloff = "" -- Vim default.
vim.o.breakindent = true
vim.o.confirm = true -- Have destructive commands y-n prompt instead of fail.
vim.o.encoding = "utf-8"
vim.o.foldenable = false
vim.o.foldlevelstart = 99
vim.o.foldmethod = "indent"
vim.o.formatoptions = "roqlj" -- See fo-table.
vim.o.guicursor = ""
vim.o.hlsearch = true
vim.o.ignorecase = false
vim.o.joinspaces = false -- Single space after a period.
vim.o.laststatus = 1
vim.o.lazyredraw = true -- No redrawing while executing macros.
vim.o.linebreak = true
vim.o.list = false
vim.o.modeline = false
vim.o.mouse = ""
vim.o.nrformats = "alpha,bin,hex" -- Enable CTRL-A for letters, don't treat leading 0s as a base 8 marker.
vim.o.number = true
vim.o.report = 0 -- Always report number of lines changed, no arbitrary threshhold.
vim.o.secure = true -- Unnecesary but just in case, see trojan-horse.
vim.o.shiftround = true -- Round indent to shiftwidth.
vim.o.shiftwidth = 8
vim.o.showfulltag = true
vim.o.showmode = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.startofline = false
vim.o.textwidth = 80
vim.o.undofile = true
vim.o.virtualedit = "all" -- Viaje de ida.
vim.o.wrap = false
vim.o.wrapscan = false
