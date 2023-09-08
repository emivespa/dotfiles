hi clear

" ## Diff

" Diff colors that emulate the Git CLI colors:
hi DiffAdd     ctermfg=2 ctermbg=none
hi DiffChange  ctermfg=2 ctermbg=none
hi DiffDelete  ctermfg=1 ctermbg=none
hi DiffText    ctermfg=0 ctermbg=none  cterm=bold

" ## UI

" MatchParen
hi clear MatchParen
hi MatchParen ctermbg=8

" Pmenu colors that don't suck like the defaults:
hi clear Pmenu
hi clear PmenuSel
if &background == 'light'
	hi Pmenu ctermbg=7 ctermfg=0
	hi PmenuSel ctermbg=8 ctermfg=15
else
	hi Pmenu ctermbg=8 ctermfg=15
	hi PmenuSel ctermbg=7 ctermfg=0
endif
hi clear PmenuSbar | hi link PmenuSbar Pmenu
hi clear PmenuThumb | hi link PmenuThumb PmenuSel

" SignColumn colors consistent with LineNr:
hi clear SignColumn
hi link SignColumn LineNr

" StatusLine and j
hi clear StatusLine
hi clear StatusLineNC
if &background == 'light'
	hi StatusLine ctermbg=8 ctermfg=15
	hi StatusLineNC ctermbg=7 ctermfg=0
else
	hi StatusLine ctermbg=7 ctermfg=0
	hi StatusLineNC ctermbg=8 ctermfg=15
endif
" Clear all except some:

" ## Syntax

" hi clear Comment
" hi clear Constant
" hi clear Special
" hi clear Identifier
" hi clear Statement
" hi clear PreProc
" hi clear Type
" hi clear Underlined
" hi clear Ignore

" " Text                  " " Text
hi link @text.literal    NONE " hi default link @text.literal Comment
hi link @text.reference  NONE " hi default link @text.reference Identifier
hi link @text.title      NONE " hi default link @text.title Title
hi link @text.uri        NONE " hi default link @text.uri Underlined
hi link @text.underline  NONE " hi default link @text.underline Underlined
" hi link @text.todo       NONE " hi default link @text.todo Todo

" Miscs                " Miscs
" hi link @comment      NONE " hi default link @comment Comment
hi link @punctuation  NONE " hi default link @punctuation Delimiter

" " Constants                " " Constants
hi link @constant           NONE " hi default link @constant Constant
hi link @constant.builtin   NONE " hi default link @constant.builtin Special
hi link @constant.macro     NONE " hi default link @constant.macro Define
hi link @define             NONE " hi default link @define Define
hi link @macro              NONE " hi default link @macro Macro
" hi link @string             NONE " hi default link @string String
" hi link @string.escape      NONE " hi default link @string.escape SpecialChar
" hi link @string.special     NONE " hi default link @string.special SpecialChar
" hi link @character          NONE " hi default link @character Character
" hi link @character.special  NONE " hi default link @character.special SpecialChar
hi link @number             NONE " hi default link @number Number
hi link @boolean            NONE " hi default link @boolean Boolean
hi link @float              NONE " hi default link @float Float

" " Functions               " " Functions
hi link @function          NONE " hi default link @function Function
hi link @function.builtin  NONE " hi default link @function.builtin Special
hi link @function.macro    NONE " hi default link @function.macro Macro
hi link @parameter         NONE " hi default link @parameter Identifier
hi link @method            NONE " hi default link @method Function
hi link @field             NONE " hi default link @field Identifier
hi link @property          NONE " hi default link @property Identifier
hi link @constructor       NONE " hi default link @constructor Special

" " Keywords           " " Keywords
hi link @conditional  NONE " hi default link @conditional Conditional
hi link @repeat       NONE " hi default link @repeat Repeat
hi link @label        NONE " hi default link @label Label
hi link @operator     NONE " hi default link @operator Operator
hi link @keyword      NONE " hi default link @keyword Keyword
hi link @exception    NONE " hi default link @exception Exception

hi link @variable         NONE " hi default link @variable Identifier
hi link @type             NONE " hi default link @type Type
hi link @type.definition  NONE " hi default link @type.definition Typedef
hi link @storageclass     NONE " hi default link @storageclass StorageClass
hi link @namespace        NONE " hi default link @namespace Identifier
hi link @include          NONE " hi default link @include Include
hi link @preproc          NONE " hi default link @preproc PreProc
hi link @debug            NONE " hi default link @debug Debug
hi link @tag              NONE " hi default link @tag Tag

" " LSP semantic tokens           " " LSP semantic tokens
hi link @lsp.type.class          NONE " hi default link @lsp.type.class Structure
hi link @lsp.type.comment        NONE " hi default link @lsp.type.comment Comment
hi link @lsp.type.decorator      NONE " hi default link @lsp.type.decorator Function
hi link @lsp.type.enum           NONE " hi default link @lsp.type.enum Structure
hi link @lsp.type.enumMember     NONE " hi default link @lsp.type.enumMember Constant
hi link @lsp.type.function       NONE " hi default link @lsp.type.function Function
hi link @lsp.type.interface      NONE " hi default link @lsp.type.interface Structure
hi link @lsp.type.macro          NONE " hi default link @lsp.type.macro Macro
hi link @lsp.type.method         NONE " hi default link @lsp.type.method Function
hi link @lsp.type.namespace      NONE " hi default link @lsp.type.namespace Structure
hi link @lsp.type.parameter      NONE " hi default link @lsp.type.parameter Identifier
hi link @lsp.type.property       NONE " hi default link @lsp.type.property Identifier
hi link @lsp.type.struct         NONE " hi default link @lsp.type.struct Structure
hi link @lsp.type.type           NONE " hi default link @lsp.type.type Type
hi link @lsp.type.typeParameter  NONE " hi default link @lsp.type.typeParameter TypeDef
hi link @lsp.type.variable       NONE " hi default link @lsp.type.variable Identifier

" ### Custom

hi @error ctermfg=1
