return {
	{
		-- cmp
		"https://github.com/hrsh7th/nvim-cmp",
		name = "cmp",
		dependencies = { "luasnip" },
		config = function()
			local has_words_before = function()
				unpack = unpack or table.unpack
				local line, col = unpack(vim.api.nvim_win_get_cursor(0))
				return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
			end
			local luasnip = require('luasnip')
			-- Set up nvim-cmp.
			local cmp = require'cmp'
			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
						require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
						-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
						-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),
					-- ['<CR>'] = cmp.mapping.confirm({ select = true }),
					['<CR>'] = cmp.mapping.confirm({ select = false }),
						-- Accept currently selected item. Set `select == false` means to only confirm explicitly selected items.
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							-- cmp.select_next_item()
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select})
							-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
							-- they way you will only jump inside the snippet region
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						elseif has_words_before() then
							-- cmp.complete()
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Select})
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					-- { name = 'vsnip' }, -- For vsnip users.
					{ name = 'luasnip' }, -- For luasnip users.
					-- { name = 'ultisnips' }, -- For ultisnips users.
					-- { name = 'snippy' }, -- For snippy users.
					--
					{ name = 'buffer' },
					{ name = "path", keyword_patterh = "/" }, -- Works for ~/, ./, ../.
					{ name = "emoji", keyword_pattern = ":" },
					-- { name = "luasnip" },
					-- { name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				})
			})
		end,
	},
	-- cmp sources
	{ "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help", dependencies = { "cmp", "lspconfig" } },
	{ "https://github.com/hrsh7th/cmp-buffer", dependencies = { "cmp" } },
	{ "https://github.com/hrsh7th/cmp-emoji", dependencies = { "cmp" } },
	{ "https://github.com/hrsh7th/cmp-nvim-lsp", dependencies = { "cmp", "lspconfig" } },
	{ "https://github.com/hrsh7th/cmp-path", dependencies = { "cmp" } },
	{ "https://github.com/zbirenbaum/copilot-cmp", dependencies = { "cmp", "copilot.lua" } },

	{
		-- copilot.lua
		"https://github.com/zbirenbaum/copilot.lua",
		name = "copilot.lua",
		config = function()
			require("copilot").setup({})
		end,
	},

	{
		-- lspconfig
		"https://github.com/neovim/nvim-lspconfig",
		name = "lspconfig",
		lazy = false,
		dependencies = { "mason-lspconfig", "neodev" },
		config = function()
			-- Source: https://github.com/neovim/nvim-lspconfig#suggested-configuration
			-- Mods: no significant ones so far.
			-- TODO: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
			-- TODO: https://github.com/neovim/nvim-lspconfig/wiki/Snippets
			local lspconfig = require('lspconfig')
			lspconfig.bashls.setup{}
			lspconfig.clangd.setup{}
			lspconfig.lua_ls.setup{}
			lspconfig.pyright.setup {}
			lspconfig.terraformls.setup{}
			lspconfig.lua_ls.setup({})
			-- lspconfig.lua_ls.setup({
			-- 	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lua_ls
			-- 	settings = {
			-- 		Lua = {
			-- 			runtime = { version = 'LuaJIT' },
			-- 			diagnostics = { globals = {'vim'}, },
			-- 			workspace = { library = vim.api.nvim_get_runtime_file("", true), },
			-- 			telemetry = { enable = false, },
			-- 		},
			-- 	},
			-- })
			-- docker
			lspconfig.docker_compose_language_service.setup{}
			lspconfig.dockerls.setup{}
			-- go
			lspconfig.golangci_lint_ls.setup{}
			lspconfig.gopls.setup{}
			-- "webdev"
			lspconfig.tailwindcss.setup{}
			lspconfig.tsserver.setup {}
			-- lspconfig.eslint.setup({
			-- 	on_attach = function(client, bufnr)
			-- 		vim.api.nvim_create_autocmd("BufWritePre", {
			-- 			buffer = bufnr,
			-- 			command = "EslintFixAll",
			-- 		})
			-- 	end,
			-- })
			-- Global mappings.
			-- See `:help vim.diagnostic.*` for documentation on any of the below functions
			vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
			vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
			-- Use LspAttach autocommand to only map the following keys
			-- after the language server attaches to the current buffer
			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = { buffer = ev.buf }
					vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
					-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
					vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
					vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
					vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
					vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
					vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
					vim.keymap.set('n', '<leader>wl', function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, opts)
					vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
					vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
					vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
					vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
					vim.keymap.set('n', '<leader>f', function()
						vim.lsp.buf.format { async = true }
					end, opts)
				end,
			})
		end,
	},

	{
		-- luasnip
		"https://github.com/L3MON4D3/LuaSnip",
		name = "luasnip",
		version = "1.*",
		build = 'make install_jsregexp',
		-- config = function()
		--   require("luasnip").setup()
		-- end,
	},

	{
		-- mason
		"https://github.com/williamboman/mason.nvim",
		name = "mason",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	{
		-- mason-lspconfig
		"https://github.com/williamboman/mason-lspconfig.nvim",
		name = "mason-lspconfig",
		dependencies = { "mason" },
		config = function()
			require("mason-lspconfig").setup()
		end,
	},

	{
		-- neodev
		"https://github.com/folke/neodev.nvim",
		name = "neodev",
		dependencies = { "cmp" },
		config = function()
			require("neodev").setup()
		end,
	},

	{
		-- null-ls
		"https://github.com/jose-elias-alvarez/null-ls.nvim",
		name = "null",
		dependencies = "https://github.com/nvim-lua/plenary.nvim",
		config = function()
			local null_ls = require('null-ls')
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			null_ls.setup({
				debug = true, -- TODO: disable me.
				sources = {
					null_ls.builtins.diagnostics.checkmake,
					null_ls.builtins.diagnostics.clang_check,
					null_ls.builtins.diagnostics.deadnix,
					null_ls.builtins.diagnostics.tsc,
					-- eslint
					null_ls.builtins.code_actions.eslint_d,
					-- null_ls.builtins.diagnostics.eslint_d,
					null_ls.builtins.formatting.eslint_d,
					null_ls.builtins.formatting.prettierd, -- null_ls.builtins.formatting.prettier,
					-- go
					null_ls.builtins.diagnostics.golangci_lint,
					null_ls.builtins.formatting.gofmt, -- null_ls.builtins.formatting.gofumpt,
					null_ls.builtins.formatting.goimports,
					-- null_ls.builtins.formatting.goimports_reviser,
					-- lua
					-- null_ls.builtins.diagnostics.luacheck,
					-- null_ls.builtins.formatting.lua_format,
					-- null_ls.builtins.formatting.stylua,
					-- python
					null_ls.builtins.formatting.blackd,
					-- shellcheck
					-- null_ls.builtins.code_actions.shellcheck,
					-- null_ls.builtins.diagnostics.shellcheck,
					-- terraform
					null_ls.builtins.diagnostics.terraform_validate,
					null_ls.builtins.diagnostics.tfsec,
					null_ls.builtins.formatting.terraform_fmt,
				},
				-- AutoFormatting:
				-- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save#code
				-- you can reuse a shared lspconfig on_attach callback here
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
								-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
								-- vim.lsp.buf.formatting_sync()
								vim.lsp.buf.format({
									async = false,
									timeout_ms = 5000, -- Eslint can take slightly longer than the default.
								})
							end,
						})
					end
				end,
			})
		end,
	},
}
