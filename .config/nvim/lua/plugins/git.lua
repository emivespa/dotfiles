return {
	{
		"https://github.com/airblade/vim-gitgutter",
		config = function()
			vim.cmd([[
				hi clear GitGutterAddLine          | hi link GitGutterAddLine            diffAdded
				hi clear GitGutterChangeLine       | hi link GitGutterChangeLine         diffLine
				hi clear GitGutterDeleteLine       | hi link GitGutterDeleteLine         diffRemoved
				hi clear GitGutterChangeDeleteLine | hi link GitGutterChangeDeleteLine   diffLine
			]])
		end,
	},
}
