" diff* colors to emulate `git show`:
"
" - best-effort, might be missing something
" - currently not touching gitHead
hi diffFile       cterm=bold ctermfg=none
hi diffIndexLine  cterm=bold ctermfg=none
hi diffOldFile    cterm=bold ctermfg=none
hi diffNewFile    cterm=bold ctermfg=none
hi diffLine       ctermfg=6
hi diffSubname    cterm=none ctermfg=none
hi diffAdded      ctermfg=2
hi diffRemoved    ctermfg=9

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
