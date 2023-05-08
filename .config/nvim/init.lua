vim.cmd.filetype 'on'
vim.cmd.syntax 'on'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.netrw_banner = 0
vim.g.netrw_hide = 0
vim.g.netrw_liststyle = 3 -- Start in tree mode.
vim.o.autoindent = true
vim.o.autowrite = true
vim.o.background = 'dark'
vim.o.backspace = 'indent,eol,start' -- Backspace over anything.
vim.o.breakindent = true
vim.o.confirm = true -- Have destructive commands y-n prompt instead of fail.
vim.o.encoding = 'utf-8'
vim.o.foldenable = true
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'indent'
vim.o.formatoptions = 'roqlj' -- See fo-table.
vim.o.hlsearch = true
vim.o.ignorecase = false
vim.o.joinspaces = false -- Single space after a period.
vim.o.laststatus = 1 -- Only show statusbar if there are >1 windows.
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
vim.opt.completeopt = {'menu', 'menuone', 'preview', 'noinsert', 'noselect'}

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
	-- colorscheme
	{
		'https://github.com/emivespa/defaultx.vim', -- Personal colorscheme mods.
		config = function()
			vim.cmd.colorscheme 'peachpuffx'
		end,
	},

	-- comment
	--
	-- TODO: replace with https://github.com/tpope/vim-commentary ?
	{
		'https://github.com/numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	},

	-- copilot
	{
		'https://github.com/github/copilot.vim',
		name = 'copilot.vim',
	},
	-- {
	-- 	'https://github.com/zbirenbaum/copilot.lua'
	-- 	name = 'copilot.lua',
	-- }

	-- editorconfig
	'https://github.com/editorconfig/editorconfig-vim',

	-- fzf
	{
		'https://github.com/junegunn/fzf',
		name = 'fzf',
	},
	{
		'https://github.com/junegunn/fzf.vim',
		dependencies = { 'fzf' },
		config = function()
			vim.cmd([[
				nnoremap <C-p> :GFiles!<Cr>
				command! -bang -nargs=* GGrep
					\ call fzf#vim#grep(
					\ 'git grep --line-number -- '.shellescape(<q-args>), 0,
					\ fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
				nnoremap <C-g> :GGrep!<Cr>
			]])
		end,
	},

	-- gitgutter
	'https://github.com/airblade/vim-gitgutter',

	-- netrw
	{
		'https://github.com/tpope/vim-vinegar',
		lazy = false,
	},

	-- sleuth
	'https://github.com/tpope/vim-sleuth',

	-- complex stuff ---------------------------------------------------------------

	-- cmp
	{
		'https://github.com/hrsh7th/nvim-cmp',
		name = 'nvim-cmp',
		config = function()
			vim.opt.completeopt = {'menu', 'menuone', 'preview', 'noinsert', 'noselect'}
			local cmp = require('cmp')
			cmp.setup({
				-- snippet = {
				-- 	expand = function(args)
				-- 		luasnip.lsp_expand(args.body)
				-- 	end
				-- },
				sources = {
					-- {name = 'luasnip', keyword_length = 2},
					{ name = 'buffer', },
					{ name = 'copilot', },
					{ name = 'emoji', },
					{ name = 'nvim_lsp', },
					{ name = 'path', },
				},
				window = {
					documentation = cmp.config.window.bordered()
				},
				formatting = {
					fields = {'menu', 'abbr', 'kind'},
					format = function(entry, item)
						local menu_icon = {
							buffer        = 'buffer',
							copilot       = 'copilot',
							emoji         = 'emoji',
							nvim_lsp      = 'nvim_lsp',
							path          = 'path',
						}
						item.menu = menu_icon[entry.source.name]
						return item
					end,
				},
				mapping = {
					['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
					['<C-n>'] = cmp.mapping.select_next_item(select_opts),
					['<C-u>'] = cmp.mapping.scroll_docs(-4),
					['<C-d>'] = cmp.mapping.scroll_docs(4),
					['<C-e>'] = cmp.mapping.abort(),
					['<C-y>'] = cmp.mapping.confirm({select = true}),
					['<CR>'] = cmp.mapping.confirm({select = false}),
					-- ['<C-f>'] = cmp.mapping(function(fallback)
					-- 	if luasnip.jumpable(1) then
					-- 		luasnip.jump(1)
					-- 	else
					-- 		fallback()
					-- 	end
					-- end, {'i', 's'}),
					-- ['<C-b>'] = cmp.mapping(function(fallback)
					-- 	if luasnip.jumpable(-1) then
					-- 		luasnip.jump(-1)
					-- 	else
					-- 		fallback()
					-- 	end
					-- end, {'i', 's'}),
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
		end,

	},
	-- { 'https://github.com/hrsh7th/cmp-nvim-lsp-signature-help', dependencies = { 'nvim-cmp', 'nvim-lspconfig', }, },
	-- { 'https://github.com/hrsh7th/cmp-vsnip', dependencies = { 'nvim-cmp', 'vim-vsnip', }, },
	-- { 'https://github.com/zbirenbaum/copilot-cmp', dependencies = { 'copilot.lua', 'nvim-cmp', }, },
	-- { 'https://github.com/amarakon/nvim-cmp-buffer-lines', dependencies = { 'nvim-cmp', }, },
	{ 'https://github.com/hrsh7th/cmp-buffer', dependencies = { 'nvim-cmp', }, },
	{ 'https://github.com/hrsh7th/cmp-copilot', dependencies = { 'copilot.vim', 'nvim-cmp', }, },
	{ 'https://github.com/hrsh7th/cmp-emoji', dependencies = { 'nvim-cmp', }, },
	{ 'https://github.com/hrsh7th/cmp-nvim-lsp', dependencies = { 'nvim-cmp', 'nvim-lspconfig', }, },
	{ 'https://github.com/hrsh7th/cmp-path', dependencies = { 'nvim-cmp', }, },

	-- lsp
	{
		'https://github.com/neovim/nvim-lspconfig',
		name = 'nvim-lspconfig',
		lazy = false,
		dependencies = { 'mason-lspconfig.nvim', 'neodev.nvim', },
		config = function()
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
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true
			local lspconfig = require('lspconfig')
			lspconfig.bashls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.clojure_lsp.setup({})
			lspconfig.cssls.setup({})
			lspconfig.cssmodules_ls.setup({})
			lspconfig.docker_compose_language_service.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.graphql.setup({})
			-- lspconfig.helm_ls.setup({})
			lspconfig.html.setup({ capabilities = capabilities, })
			lspconfig.jdtls.setup({})
			lspconfig.jsonls.setup({ capabilities = capabilities, })
			lspconfig.lua_ls.setup({}) -- FIXME.
			lspconfig.prismals.setup({})
			lspconfig.pyright.setup({})
			lspconfig.quick_lint_js.setup({})
			lspconfig.rnix.setup({})
			lspconfig.solidity_ls.setup({}) -- lspconfig.solang.setup{}
			lspconfig.sqlls.setup({}) -- lspconfig.sqls.setup{}
			lspconfig.tailwindcss.setup({})
			lspconfig.terraform_lsp.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.vimls.setup({})
			lspconfig.yamlls.setup({})
		end,
	},
	{
		'https://github.com/williamboman/mason.nvim',
		name = 'mason.nvim',
		build = ':MasonUpdate',
		config = function()
			require('mason').setup()
		end,
	},
	{
		'https://github.com/williamboman/mason-lspconfig.nvim',
		name = 'mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup()
		end,
		dependencies = { 'mason.nvim', },
	},
	{
		'https://github.com/folke/neodev.nvim',
		name = 'neodev.nvim',
		config = function()
			require('neodev').setup()
		end,
	},
})

local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = ''
	})
end
sign({name = 'DiagnosticSignError', text = 'E'})
sign({name = 'DiagnosticSignWarn', text = 'W'})
sign({name = 'DiagnosticSignHint', text = 'H'})
sign({name = 'DiagnosticSignInfo', text = 'I'})
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
