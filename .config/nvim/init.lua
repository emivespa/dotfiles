-- blogpost: https://vonheikemen.github.io/devlog/tools/setup-nvim-lspconfig-plus-nvim-cmp/

vim.cmd.colorscheme 'default'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.autoindent = true
vim.o.autowrite = true
vim.o.background = 'dark'
vim.o.backspace = 2 -- Backspace over anything.
vim.o.breakindent = true
vim.o.clipboard = 'unnamedplus'
vim.o.confirm = true -- Have destructive commands y-n prompt instead of fail.
vim.o.encoding = 'utf-8'
vim.o.foldenable = false
vim.o.formatoptions = 'roqlj' -- See fo-table.
vim.o.hlsearch = true
vim.o.ignorecase = false
vim.o.joinspaces = false -- Single space after a period.
vim.o.lazyredraw = true -- No redrawing while executing macros.
vim.o.linebreak = true
vim.o.modeline = false
vim.o.nrformats = 'alpha,bin,hex' -- Enable CTRL-A for letters, don't treat leading 0s as a base 8 marker.
vim.o.number = false
vim.o.path = vim.o.path .. '**' -- Search into subfolders, tab complete paths.
vim.o.report = 0 -- Always report number of lines changed, no arbitrary threshhold.
vim.o.secure = true -- Unnecesary but just in case, see trojan-horse.
vim.o.shiftround = true -- Round indent to shiftwidth.
vim.o.shiftwidth = 8
vim.o.shortmess = '' -- Don't shorten any messages.
vim.o.showfulltag = true
vim.o.showmode = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.startofline = false
vim.o.t_Co = 16 -- Prevent boldface gallore if vim incorrectly assumes >16 color support.
vim.o.tabstop = 8
vim.o.termguicolors = false
vim.o.textwidth = 80 -- One True Arbitrary Number.
vim.o.undofile = true
vim.o.virtualedit = 'all'
vim.o.wrap = false
vim.o.wrapscan = false -- /, * and friends don't wrap around the file. (--search hit BOTTOM, continuing at TOP--)

-- https://github.com/folke/lazy.nvim - "zzz A modern plugin manager for Neovim"
-- :help lazy.nvim.txt
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
-- if not vim.loop.fs_stat(lazypath) then
-- 	vim.fn.system {
-- 		'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', -- latest stable release
-- 		lazypath,
-- 	}
-- end
if vim.loop.fs_stat(lazypath) then
	vim.opt.rtp:prepend(lazypath)
end
require('lazy').setup({
	-- [[ nvim-lspconfig ]]
	{
		'https://github.com/neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')
			local lsp_defaults = lspconfig.util.default_config
			lsp_defaults.capabilities = vim.tbl_deep_extend(
			'force',
			lsp_defaults.capabilities,
			require('cmp_nvim_lsp').default_capabilities()
			)
			-- LSP servers
			lspconfig.tsserver.setup({})
			lspconfig.html.setup({})
			lspconfig.cssls.setup({})
			lspconfig.lua_ls.setup({})
		end,
	},
	'https://github.com/hrsh7th/nvim-cmp',
	'https://github.com/hrsh7th/cmp-nvim-lsp',
	'https://github.com/hrsh7th/cmp-buffer',
	'https://github.com/hrsh7th/cmp-path',

	-- [[ luasnip ]]
	{
		'https://github.com/L3MON4D3/LuaSnip',
		-- config = function()
		-- 	require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/Code/User/snippets/global.json" } })
		-- end,
	},
	'https://github.com/saadparwaiz1/cmp_luasnip',
	-- 'https://github.com/rafamadriz/friendly-snippets',

	-- [[ misc ]]
	'https://github.com/editorconfig/editorconfig-vim',
	-- 'https://github.com/lukas-reineke/indent-blankline.nvim',
	{
		'https://github.com/numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	},
	'https://github.com/junegunn/fzf',
	'https://github.com/junegunn/fzf.vim',
}, {})

-- Keybindings
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function()
		local bufmap = function(mode, lhs, rhs)
			local opts = {buffer = true}
			vim.keymap.set(mode, lhs, rhs, opts)
		end
		bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
		bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
		bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
		bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
		bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
		bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
		bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
		bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
		bufmap('n', '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
		bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
		bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
		bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
		bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
		bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
	end
})

-- Diagnostics
local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = ''
	})
end
sign({name = 'DiagnosticSignError', text = '❌'})
sign({name = 'DiagnosticSignWarn', text = '⚠️'})
sign({name = 'DiagnosticSignHint', text = '💡'})
sign({name = 'DiagnosticSignInfo', text = 'ℹ️'})
vim.diagnostic.config({
	virtual_text = false,
	severity_sort = true,
	float = {
		border = 'rounded',
		source = 'always',
	},
})
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
vim.lsp.handlers.hover,
{border = 'rounded'}
)
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
vim.lsp.handlers.signature_help,
{border = 'rounded'}
)

-- Autocomplete
--
-- TODO: move into cmp config, set up luasnip as dependency?
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
require('luasnip.loaders.from_vscode').lazy_load()
local cmp = require('cmp')
local luasnip = require('luasnip')
local select_opts = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp', keyword_length = 1},
		{name = 'buffer', keyword_length = 3},
		{name = 'luasnip', keyword_length = 2},
	},
	window = {
		documentation = cmp.config.window.bordered()
	},
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				luasnip = '⋗',
				buffer = 'Ω',
				path = ' ',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	mapping = {
		['<Up>'] = cmp.mapping.select_prev_item(select_opts),
		['<Down>'] = cmp.mapping.select_next_item(select_opts),
		['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
		['<C-n>'] = cmp.mapping.select_next_item(select_opts),
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-y>'] = cmp.mapping.confirm({select = true}),
		['<CR>'] = cmp.mapping.confirm({select = false}),
		['<C-f>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {'i', 's'}),
		['<C-b>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {'i', 's'}),
		['<Tab>'] = cmp.mapping(function(fallback)
			local col = vim.fn.col('.') - 1
			if cmp.visible() then
				cmp.select_next_item(select_opts)
			elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
				fallback()
			else
				cmp.complete()
			end
		end, {'i', 's'}),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			else
				fallback()
			end
		end, {'i', 's'}),
	},
})
