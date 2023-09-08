return {
	"https://github.com/joshdick/onedark.vim",
	{
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
					tab_size = 0,
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
					-- Emulate default colorscheme tab styling:
					-- TODO: delete unnecessary.
					trunc_marker                 = { ctermbg = 8, },
					background                   = { ctermbg = 8, },
					buffer_visible               = { ctermbg = 8, },
					close_button                 = { ctermbg = 8, },
					close_button_visible         = { ctermbg = 8, },
					diagnostic                   = { ctermbg = 8, },
					diagnostic_visible           = { ctermbg = 8, },
					duplicate                    = { ctermbg = 8, },
					duplicate_visible            = { ctermbg = 8, },
					error                        = { ctermbg = 8, },
					error_diagnostic             = { ctermbg = 8, },
					error_diagnostic_visible     = { ctermbg = 8, },
					error_visible                = { ctermbg = 8, },
					-- fill                         = { ctermbg = 8, },
					fill                         = { ctermbg = 7, },
					hint                         = { ctermbg = 8, },
					hint_diagnostic              = { ctermbg = 8, },
					hint_diagnostic_visible      = { ctermbg = 8, },
					hint_visible                 = { ctermbg = 8, },
					indicator_visible            = { ctermbg = 8, },
					info                         = { ctermbg = 8, },
					info_diagnostic              = { ctermbg = 8, },
					info_diagnostic_visible      = { ctermbg = 8, },
					info_visible                 = { ctermbg = 8, },
					modified                     = { ctermbg = 8, },
					modified_visible             = { ctermbg = 8, },
					numbers                      = { ctermbg = 8, },
					numbers_visible              = { ctermbg = 8, },
					offset_separator             = { ctermbg = 8, },
					pick                         = { ctermbg = 8, },
					pick_visible                 = { ctermbg = 8, },
					separator                    = { ctermbg = 8, },
					separator_visible            = { ctermbg = 8, },
					tab                          = { ctermbg = 8, },
					tab_close                    = { ctermbg = 8, },
					tab_separator                = { ctermbg = 8, },
					warning                      = { ctermbg = 8, },
					warning_diagnostic           = { ctermbg = 8, },
					warning_diagnostic_visible   = { ctermbg = 8, },
					warning_visible              = { ctermbg = 8, },

					buffer_selected              = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					close_button_selected        = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					diagnostic_selected          = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					duplicate_selected           = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					error_diagnostic_selected    = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					error_selected               = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					hint_diagnostic_selected     = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					hint_selected                = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					indicator_selected           = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					info_diagnostic_selected     = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					info_selected                = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					modified_selected            = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					numbers_selected             = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					pick_selected                = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					separator_selected           = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					tab_selected                 = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					tab_separator_selected       = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					warning_diagnostic_selected  = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
					warning_selected             = { ctermbg = 0, --[[ cterm = { 'bold', }, ]]  },
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
	},
}
