return {
	{
		"https://github.com/lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup({
				signs = {
					add          = { text = '+' },     -- add          = { text = '│' },
					change       = { text = '~' },     -- change       = { text = '│' },
					delete       = { text = '_' },     -- delete       = { text = '_' },
					topdelete    = { text = '‾' },     -- topdelete    = { text = '‾' },
					changedelete = { text = '~' },     -- changedelete = { text = '~' },
					untracked    = { text = '?' },     -- untracked    = { text = '┆' },
				},
				-- word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
				current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
				},
				current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
			})
		end,
	},
}
