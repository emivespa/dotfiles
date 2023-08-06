return {
	{
		-- treesitter
		"https://github.com/nvim-treesitter/nvim-treesitter",
		name = "treesitter",
		dependencies = { "ts-context-commentstring" },
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
				-- "the five listed parsers should always be installed"
				-- https://github.com/nvim-treesitter/nvim-treesitter#modules
				sync_install = false,
				auto_install = true,
			highlight = { enable = true },
				indent = { enable = true },
				-- https://github.com/nvim-treesitter/nvim-treesitter#incremental-selection
				incremental_selection = {
					enable = true,
					keymaps = {
						-- init_selection = "gnn", -- set to `false` to disable one of the mappings
						-- node_incremental = "grn",
						-- scope_incremental = "grc",
						-- node_decremental = "grm",
						init_selection = "<c-space>",
						node_incremental = "<c-space>",
						scope_incremental = "<c-s>",
						node_decremental = "<M-space>",
					},
				},
				autotag = { enable = true },
				context_commentstring = {
					enable = true,
					enable_autocdm = false,
				},
			})
			vim.cmd(
				[[
					set foldmethod=expr
					set foldexpr=nvim_treesitter#foldexpr()
					set nofoldenable " Disable folding at startup.
					]]
			)
		end,
	},

	{
		-- autopairs
		"https://github.com/windwp/nvim-autopairs",
		dependencies = { "treesitter" },
		config = function()
			require("nvim-autopairs").setup({
				check_ts = true,
			})
		end,
	},

	{
		-- autotag
		"https://github.com/windwp/nvim-ts-autotag",
		dependencies = { "treesitter" },
	},

	{
		-- comment
		--
		-- TODO: document where config is cargo culted from.
		"https://github.com/numToStr/Comment.nvim",
		dependencies = { "ts-context-commentstring", },
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},

	{
		-- commentstring
		"https://github.com/JoosepAlviste/nvim-ts-context-commentstring",
		name = "ts-context-commentstring",
	},

	{
		-- context
		"https://github.com/nvim-treesitter/nvim-treesitter-context",
		dependencies = "treesitter",
		config = function()
			require("treesitter-context").setup({
				min_window_height = 24,
				mode = "topline", -- 'cursor' is distracting.
				-- separator = '-',
			})
			vim.cmd([[
				hi clear TreesitterContext
				hi link TreesitterContext Pmenu
				" hi link TreesitterContext LineNr
				" hi clear TreesitterContextSeparator
				" hi link TreesitterContextSeparator LineNr
				]])
		end,
	},

	-- {
	-- 	-- rainbow-delimiters
	-- 	"https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
	-- 	dependencies = { "treesitter", },
	-- 	config = function()
	-- 		require('rainbow-delimiters.setup')({
	-- 			highlight = {
	-- 				'RainbowDelimiterRed',
	-- 				'RainbowDelimiterGreen',
	-- 				'RainbowDelimiterYellow',
	-- 				'RainbowDelimiterBlue',
	-- 				'RainbowDelimiterViolet',
	-- 				'RainbowDelimiterCyan',
	-- 			},
	-- 		})
	-- 	end,
	-- },

	-- {
	-- 	-- textobjects
	-- 	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	-- 	dependencies = { "treesitter" },
	-- },
}
