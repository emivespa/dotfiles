return {
	{
		"https://github.com/lewis6991/gitsigns.nvim",
		config = function()
			local gitsigns = require('gitsigns')
			gitsigns.setup({
				signs = {
					add           = { text = '+' },  -- add           = { text = '│' },
					change        = { text = '~' },  -- change        = { text = '│' },
					delete        = { text = '_' },  -- delete        = { text = '_' },
					topdelete     = { text = '‾' },  -- topdelete     = { text = '‾' },
					changedelete  = { text = '~' },  -- changedelete  = { text = '~' },
					untracked     = { text = '?' },  -- untracked     = { text = '┆' },
				},
				-- word_diff  = true, -- Toggle with `:Gitsigns toggle_word_diff` -- TODO: fix styles.
				current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
				},
				current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
				-- signcolumn = false,
				linehl = true,
				show_deleted = true,
				on_attach = function(bufnr)
					vim.keymap.set('n', ']c', function()
						if vim.wo.diff then return ']c' end
						vim.schedule(function() gitsigns.next_hunk() end)
						return '<Ignore>'
					end, {expr=true})
					vim.keymap.set('n', '[c', function()
						if vim.wo.diff then return '[c' end
						vim.schedule(function() gitsigns.prev_hunk() end)
						return '<Ignore>'
					end, {expr=true})
					-- Actions
					vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk)
					vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk)
					vim.keymap.set('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
					vim.keymap.set('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
					vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer)
					vim.keymap.set('n', '<leader>hu', gitsigns.undo_stage_hunk)
					vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer)
					vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk)
					vim.keymap.set('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
					vim.keymap.set('n', '<leader>tb', gitsigns.toggle_current_line_blame)
					vim.keymap.set('n', '<leader>hd', gitsigns.diffthis)
					vim.keymap.set('n', '<leader>hD', function() gitsigns.diffthis('~') end)
					vim.keymap.set('n', '<leader>td', gitsigns.toggle_deleted)
					-- Text object
					vim.keymap.set({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
				end,
			})
			-- vim.cmd([[
			-- 	hi link GitSignsDeleteInline NONE | hi GitSignsDeleteInline cterm=bold
			-- 	hi link GitSignsAddInline NONE | hi GitSignsAddInline cterm=bold
			-- 	hi link GitSignsChangeInline NONE | hi GitSignsChangeInline cterm=bold
			-- ]])
		end,
	},
}
