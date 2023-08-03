return {
	-- bufferline
	"https://github.com/akinsho/bufferline.nvim",
	config = function()
		-- vim.g.termguicolors = true
		local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				always_show_bufferline = false,
				diagnostics = 'nvim_lsp',
				numbers = "ordinal",
				sort_by = 'insert_at_end',
				tab_size = 16,
				-- Disable most styling:
				indicator = {
					style = 'none',
				},
				modified_icon = 'M',
				show_buffer_icons = false,
				show_buffer_close_icons = false,
				show_close_icon = false,
				separator_style = { ' ', ' ' },
				style_preset = {
					bufferline.style_preset.no_italic,
					bufferline.style_preset.no_bold,
					bufferline.style_preset.minimal,
				},
				-- themable = true,
			},
			highlights = {
				trunc_marker                 = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				background                   = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				buffer_visible               = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				close_button                 = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				close_button_visible         = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				diagnostic                   = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				diagnostic_visible           = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				duplicate                    = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				duplicate_visible            = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				error                        = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				error_diagnostic             = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				error_diagnostic_visible     = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				error_visible                = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				fill                         = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				hint                         = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				hint_diagnostic              = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				hint_diagnostic_visible      = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				hint_visible                 = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				indicator_visible            = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				info                         = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				info_diagnostic              = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				info_diagnostic_visible      = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				info_visible                 = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				modified                     = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				modified_visible             = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				numbers                      = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				numbers_visible              = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				offset_separator             = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				pick                         = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				pick_visible                 = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				separator                    = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				separator_visible            = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				tab                          = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				tab_close                    = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				tab_separator                = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				warning                      = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				warning_diagnostic           = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				warning_diagnostic_visible   = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				warning_visible              = { --[[ ctermfg = 15, ]] ctermbg = 8, },
				buffer_selected              = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				close_button_selected        = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				diagnostic_selected          = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				duplicate_selected           = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				error_diagnostic_selected    = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				error_selected               = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				hint_diagnostic_selected     = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				hint_selected                = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				indicator_selected           = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				info_diagnostic_selected     = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				info_selected                = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				modified_selected            = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				numbers_selected             = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				pick_selected                = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				separator_selected           = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				tab_selected                 = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				tab_separator_selected       = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				warning_diagnostic_selected  = { --[[ ctermfg = 15, ]] ctermbg = 5, },
				warning_selected             = { --[[ ctermfg = 15, ]] ctermbg = 5, },
			},
		})
		vim.cmd(
			[[

			nnoremap <silent><m-1> <Cmd>BufferLineGoToBuffer 1<CR>
			nnoremap <silent><m-2> <Cmd>BufferLineGoToBuffer 2<CR>
			nnoremap <silent><m-3> <Cmd>BufferLineGoToBuffer 3<CR>
			nnoremap <silent><m-4> <Cmd>BufferLineGoToBuffer 4<CR>
			nnoremap <silent><m-5> <Cmd>BufferLineGoToBuffer 5<CR>
			nnoremap <silent><m-6> <Cmd>BufferLineGoToBuffer 6<CR>
			nnoremap <silent><m-7> <Cmd>BufferLineGoToBuffer 7<CR>
			nnoremap <silent><m-8> <Cmd>BufferLineGoToBuffer 8<CR>
			nnoremap <silent><m-9> <Cmd>BufferLineGoToBuffer 9<CR>
			nnoremap <silent><m-0> <Cmd>BufferLineGoToBuffer -1<CR>
			]]
		)
	end,
}
