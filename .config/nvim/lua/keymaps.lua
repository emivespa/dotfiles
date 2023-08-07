vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>i", [[:Inspect<cr>]])
vim.keymap.set("n", "<leader>I", [[:InspectTree<cr>]])
vim.keymap.set("n", "<leader>v", [[:vert<space>]])

-- <c-q> closes buffer
vim.keymap.set('n', '<c-q>', ':bwipeout<cr>') -- Close buffer.

-- <tab> and <s-tab> navigate buffers:
vim.keymap.set('n', '<tab>', ':bnext<cr>')
vim.keymap.set('n', '<s-tab>', ':bprevious<cr>')

-- y uses system clipboard:
vim.keymap.set("n", "y", [["+y]])
vim.keymap.set("v", "y", [["+y]])
