return {
	{
		-- telescope
		"https://github.com/nvim-telescope/telescope.nvim",
		dependencies = {
			"https://github.com/nvim-lua/plenary.nvim",
			'telescope-fzf-native',
		},
		tag = "0.1.2",
		config = function()
			local telescope = require('telescope')
			telescope.setup({
				defaults = {
					-- border = false,
					layout_strategy = 'horizontal',
					layout_config = {
						horizontal = {
							prompt_position = 'top'
						},
						vertical = {
							prompt_position = 'top'
						},
					},
					prompt_position = 'top',
					sorting_strategy = 'ascending',
					borderchars = {
						prompt =   { " ", " ", " ", " ", " ", " ", " ", " " },
						results =  { " ", " ", " ", " ", " ", " ", " ", " " },
						preview =  { " ", " ", " ", " ", " ", " ", " ", " " },
					},
				},
				extensions = {
					-- https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-setup-and-configuration
					fzf = {
						fuzzy = true,                    -- false will only do exact matching
						override_generic_sorter = true,  -- override the generic sorter
						override_file_sorter = true,     -- override the file sorter
						-- case_mode = "smart_case",        -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
						case_mode = "ignore_case",        -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
					},
				},
			})
			telescope.load_extension('fzf')
			local builtin = require('telescope.builtin')
			local themes = require('telescope.themes')
			-- vim.keymap.set('n', '<c-p>', builtin.find_files, {})
			vim.keymap.set('n', '<c-p>', builtin.git_files, {})
			vim.keymap.set('n', '<c-g>', builtin.live_grep, {})
			-- vim.keymap.set('n', '<c-B>', builtin.buffers, {})
			vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
			vim.keymap.set('n', '<c-k>', builtin.commands, {})
			-- vim.keymap.set('n', '<c-h>', builtin.oldfiles, {}) -- not working
			vim.keymap.set('n', '<c-t>', builtin.lsp_dynamic_workspace_symbols, {})
			vim.keymap.set('n', '<tab>', builtin.buffers, {})
			vim.cmd([[
				hi clear TelescopeNormal
				hi link TelescopeNormal Pmenu
				hi clear TelescopeSelection
				hi link TelescopeSelection PmenuSel
				hi clear TelescopeMatching
				hi link TelescopeMatching Search
				" hi clear TelescopeBorder
				" hi link TelescopeBorder Pmenu
				]])
		end,
	},

	{
		"https://github.com/nvim-telescope/telescope-fzf-native.nvim",
		name = 'telescope-fzf-native',
		build = 'make'
	},
}
