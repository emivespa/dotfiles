" diff* colors to emulate `git show`:

hi DiffAdd     ctermfg=2 ctermbg=none
" hi DiffChange  ctermfg=3 ctermbg=none
hi DiffChange  ctermfg=2 ctermbg=none
hi DiffDelete  ctermfg=1 ctermbg=none
hi DiffText    ctermfg=0 ctermbg=none  cterm=bold

" Pmenu colors that don't suck like the defaults:
hi clear Pmenu
hi clear PmenuSel
" hi link Pmenu Visual
" hi link PmenuSel Search
hi Pmenu ctermbg=8
hi PmenuSel ctermbg=5

" SignColumn colors consistent with LineNr:
hi clear SignColumn
hi link SignColumn LineNr

hi clear StatusLine
hi link StatusLine PmenuSel
hi clear StatusLineNC
hi link StatusLineNC Pmenu
