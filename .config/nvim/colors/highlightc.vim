" Defaults from github.com/neovim/neovim/src/nvim/highlight_group.c made
" explicit.

hi clear

let g:colors_name = "highlightc"

hi Conceal      ctermbg=DarkGrey ctermfg=LightGrey guibg=DarkGrey guifg=LightGrey
hi Cursor       guibg=fg guifg=bg
hi lCursor      guibg=fg guifg=bg
hi DiffText     cterm=bold ctermbg=Red gui=bold guibg=Red
hi ErrorMsg     ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch    cterm=reverse gui=reverse
hi ModeMsg      cterm=bold gui=bold
hi NonText      ctermfg=Blue gui=bold guifg=Blue
hi Normal       cterm=NONE gui=NONE
hi PmenuSbar    ctermbg=Grey guibg=Grey
hi StatusLine   cterm=reverse,bold gui=reverse,bold
hi StatusLineNC cterm=reverse gui=reverse
hi TabLineFill  cterm=reverse gui=reverse
hi TabLineSel   cterm=bold gui=bold
hi TermCursor   cterm=reverse gui=reverse
hi WinBar       cterm=bold gui=bold
hi WildMenu     ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi default link VertSplit Normal
hi default link WinSeparator VertSplit
hi default link WinBarNC WinBar
hi default link EndOfBuffer NonText
hi default link LineNrAbove LineNr
hi default link LineNrBelow LineNr
hi default link QuickFixLine Search
hi default link CursorLineSign SignColumn
hi default link CursorLineFold FoldColumn
hi default link PmenuKind Pmenu
hi default link PmenuKindSel PmenuSel
hi default link PmenuExtra Pmenu
hi default link PmenuExtraSel PmenuSel
hi default link Substitute Search
hi default link Whitespace NonText
hi default link MsgSeparator StatusLine
hi default link NormalFloat Pmenu
hi default link FloatBorder WinSeparator
hi default link FloatTitle Title
hi default FloatShadow blend=80 guibg=Black
hi default FloatShadowThrough blend=100 guibg=Black
hi RedrawDebugNormal cterm=reverse gui=reverse
hi RedrawDebugClear ctermbg=Yellow guibg=Yellow
hi RedrawDebugComposed ctermbg=Green guibg=Green
hi RedrawDebugRecompose ctermbg=Red guibg=Red
hi Error term=reverse cterm=NONE ctermfg=White ctermbg=Red gui=NONE guifg=White guibg=Red
hi Todo term=standout cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=Blue guibg=Yellow
hi default link String Constant
hi default link Character Constant
hi default link Number Constant
hi default link Boolean Constant
hi default link Float Number
hi default link Function Identifier
hi default link Conditional Statement
hi default link Repeat Statement
hi default link Label Statement
hi default link Operator Statement
hi default link Keyword Statement
hi default link Exception Statement
hi default link Include PreProc
hi default link Define PreProc
hi default link Macro PreProc
hi default link PreCondit PreProc
hi default link StorageClass Type
hi default link Structure Type
hi default link Typedef Type
hi default link Tag Special
hi default link SpecialChar Special
hi default link Delimiter Special
hi default link SpecialComment Special
hi default link Debug Special
hi default DiagnosticError ctermfg=1 guifg=Red
hi default DiagnosticWarn ctermfg=3 guifg=Orange
hi default DiagnosticInfo ctermfg=4 guifg=LightBlue
hi default DiagnosticHint ctermfg=7 guifg=LightGrey
hi default DiagnosticOk ctermfg=10 guifg=LightGreen
hi default DiagnosticUnderlineError cterm=underline gui=underline guisp=Red
hi default DiagnosticUnderlineWarn cterm=underline gui=underline guisp=Orange
hi default DiagnosticUnderlineInfo cterm=underline gui=underline guisp=LightBlue
hi default DiagnosticUnderlineHint cterm=underline gui=underline guisp=LightGrey
hi default DiagnosticUnderlineOk cterm=underline gui=underline guisp=LightGreen
hi default link DiagnosticVirtualTextError DiagnosticError
hi default link DiagnosticVirtualTextWarn DiagnosticWarn
hi default link DiagnosticVirtualTextInfo DiagnosticInfo
hi default link DiagnosticVirtualTextHint DiagnosticHint
hi default link DiagnosticVirtualTextOk DiagnosticOk
hi default link DiagnosticFloatingError DiagnosticError
hi default link DiagnosticFloatingWarn DiagnosticWarn
hi default link DiagnosticFloatingInfo DiagnosticInfo
hi default link DiagnosticFloatingHint DiagnosticHint
hi default link DiagnosticFloatingOk DiagnosticOk
hi default link DiagnosticSignError DiagnosticError
hi default link DiagnosticSignWarn DiagnosticWarn
hi default link DiagnosticSignInfo DiagnosticInfo
hi default link DiagnosticSignHint DiagnosticHint
hi default link DiagnosticSignOk DiagnosticOk
hi default DiagnosticDeprecated cterm=strikethrough gui=strikethrough guisp=Red
hi default link DiagnosticUnnecessary Comment
hi default link LspInlayHint NonText

" Text
hi default link @text.literal Comment
hi default link @text.reference Identifier
hi default link @text.title Title
hi default link @text.uri Underlined
hi default link @text.underline Underlined
hi default link @text.todo Todo

" Miscs
hi default link @comment Comment
hi default link @punctuation Delimiter

" Constants
hi default link @constant Constant
hi default link @constant.builtin Special
hi default link @constant.macro Define
hi default link @define Define
hi default link @macro Macro
hi default link @string String
hi default link @string.escape SpecialChar
hi default link @string.special SpecialChar
hi default link @character Character
hi default link @character.special SpecialChar
hi default link @number Number
hi default link @boolean Boolean
hi default link @float Float

" Functions
hi default link @function Function
hi default link @function.builtin Special
hi default link @function.macro Macro
hi default link @parameter Identifier
hi default link @method Function
hi default link @field Identifier
hi default link @property Identifier
hi default link @constructor Special

" Keywords
hi default link @conditional Conditional
hi default link @repeat Repeat
hi default link @label Label
hi default link @operator Operator
hi default link @keyword Keyword
hi default link @exception Exception

hi default link @variable Identifier
hi default link @type Type
hi default link @type.definition Typedef
hi default link @storageclass StorageClass
hi default link @namespace Identifier
hi default link @include Include
hi default link @preproc PreProc
hi default link @debug Debug
hi default link @tag Tag

" LSP semantic tokens
hi default link @lsp.type.class Structure
hi default link @lsp.type.comment Comment
hi default link @lsp.type.decorator Function
hi default link @lsp.type.enum Structure
hi default link @lsp.type.enumMember Constant
hi default link @lsp.type.function Function
hi default link @lsp.type.interface Structure
hi default link @lsp.type.macro Macro
hi default link @lsp.type.method Function
hi default link @lsp.type.namespace Structure
hi default link @lsp.type.parameter Identifier
hi default link @lsp.type.property Identifier
hi default link @lsp.type.struct Structure
hi default link @lsp.type.type Type
hi default link @lsp.type.typeParameter TypeDef
hi default link @lsp.type.variable Identifier

" Default colors only used with a light background.
if &background == 'light'
	hi ColorColumn  ctermbg=LightRed guibg=LightRed
	hi CursorColumn ctermbg=LightGrey guibg=Grey90
	hi CursorLine   cterm=underline guibg=Grey90
	hi CursorLineNr cterm=underline ctermfg=Brown gui=bold guifg=Brown
	hi DiffAdd      ctermbg=LightBlue guibg=LightBlue
	hi DiffChange   ctermbg=LightMagenta guibg=LightMagenta
	hi DiffDelete   ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
	hi Directory    ctermfg=DarkBlue guifg=Blue
	hi FoldColumn   ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	hi Folded       ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
	hi LineNr       ctermfg=Brown guifg=Brown
	hi MatchParen   ctermbg=Cyan guibg=Cyan
	hi MoreMsg      ctermfg=DarkGreen gui=bold guifg=SeaGreen
	hi Pmenu        ctermbg=LightMagenta ctermfg=Black guibg=LightMagenta
	hi PmenuSel     ctermbg=LightGrey ctermfg=Black guibg=Grey
	hi PmenuThumb   ctermbg=Black guibg=Black
	hi Question     ctermfg=DarkGreen gui=bold guifg=SeaGreen
	hi Search       ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE
	hi SignColumn   ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	hi SpecialKey   ctermfg=DarkBlue guifg=Blue
	hi SpellBad     ctermbg=LightRed guisp=Red gui=undercurl
	hi SpellCap     ctermbg=LightBlue guisp=Blue gui=undercurl
	hi SpellLocal   ctermbg=Cyan guisp=DarkCyan gui=undercurl
	hi SpellRare    ctermbg=LightMagenta guisp=Magenta gui=undercurl
	hi TabLine      cterm=underline ctermfg=black ctermbg=LightGrey gui=underline guibg=LightGrey
	hi Title        ctermfg=DarkMagenta gui=bold guifg=Magenta
	hi Visual       guibg=LightGrey
	hi WarningMsg   ctermfg=DarkRed guifg=Red
	hi Comment      term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
	hi Constant     term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
	hi Special      term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a5acd guibg=NONE
	hi Identifier   term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE
	hi Statement    term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=bold guifg=Brown guibg=NONE
	hi PreProc      term=underline cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a0dad guibg=NONE
	hi Type         term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
	hi Underlined   term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=SlateBlue
	hi Ignore       term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE
endif

" Default colors only used with a dark background.
if &background == 'dark'
	hi ColorColumn  ctermbg=DarkRed guibg=DarkRed
	hi CursorColumn ctermbg=DarkGrey guibg=Grey40
	hi CursorLine   cterm=underline guibg=Grey40
	hi CursorLineNr cterm=underline ctermfg=Yellow gui=bold guifg=Yellow
	hi DiffAdd      ctermbg=DarkBlue guibg=DarkBlue
	hi DiffChange   ctermbg=DarkMagenta guibg=DarkMagenta
	hi DiffDelete   ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
	hi Directory    ctermfg=LightCyan guifg=Cyan
	hi FoldColumn   ctermbg=DarkGrey ctermfg=Cyan guibg=Grey guifg=Cyan
	hi Folded       ctermbg=DarkGrey ctermfg=Cyan guibg=DarkGrey guifg=Cyan
	hi LineNr       ctermfg=Yellow guifg=Yellow
	hi MatchParen   ctermbg=DarkCyan guibg=DarkCyan
	hi MoreMsg      ctermfg=LightGreen gui=bold guifg=SeaGreen
	hi Pmenu        ctermbg=Magenta ctermfg=Black guibg=Magenta
	hi PmenuSel     ctermbg=Black ctermfg=DarkGrey guibg=DarkGrey
	hi PmenuThumb   ctermbg=White guibg=White
	hi Question     ctermfg=LightGreen gui=bold guifg=Green
	hi Search       ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi SignColumn   ctermbg=DarkGrey ctermfg=Cyan guibg=Grey guifg=Cyan
	hi SpecialKey   ctermfg=LightBlue guifg=Cyan
	hi SpellBad     ctermbg=Red guisp=Red gui=undercurl
	hi SpellCap     ctermbg=Blue guisp=Blue gui=undercurl
	hi SpellLocal   ctermbg=Cyan guisp=Cyan gui=undercurl
	hi SpellRare    ctermbg=Magenta guisp=Magenta gui=undercurl
	hi TabLine      cterm=underline ctermfg=white ctermbg=DarkGrey gui=underline guibg=DarkGrey
	hi Title        ctermfg=LightMagenta gui=bold guifg=Magenta
	hi Visual       guibg=DarkGrey
	hi WarningMsg   ctermfg=LightRed guifg=Red
	hi Comment      term=bold cterm=NONE ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#80a0ff guibg=NONE
	hi Constant     term=underline cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=#ffa0a0 guibg=NONE
	hi Special      term=bold cterm=NONE ctermfg=LightRed ctermbg=NONE gui=NONE guifg=Orange guibg=NONE
	hi Identifier   term=underline cterm=bold ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#40ffff guibg=NONE
	hi Statement    term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE
	hi PreProc      term=underline cterm=NONE ctermfg=LightBlue ctermbg=NONE gui=NONE guifg=#ff80ff guibg=NONE
	hi Type         term=underline cterm=NONE ctermfg=LightGreen ctermbg=NONE gui=bold guifg=#60ff60 guibg=NONE
	hi Underlined   term=underline cterm=underline ctermfg=LightBlue gui=underline guifg=#80a0ff
	hi Ignore       term=NONE cterm=NONE ctermfg=black ctermbg=NONE gui=NONE guifg=bg guibg=NONE
endif

hi NvimInternalError ctermfg=Red ctermbg=Red guifg=Red guibg=Red
" Highlight groups (links) used by parser:
hi default link NvimAssignment Operator
hi default link NvimPlainAssignment NvimAssignment
hi default link NvimAugmentedAssignment NvimAssignment
hi default link NvimAssignmentWithAddition NvimAugmentedAssignment
hi default link NvimAssignmentWithSubtraction NvimAugmentedAssignment
hi default link NvimAssignmentWithConcatenation NvimAugmentedAssignment
hi default link NvimOperator Operator
hi default link NvimUnaryOperator NvimOperator
hi default link NvimUnaryPlus NvimUnaryOperator
hi default link NvimUnaryMinus NvimUnaryOperator
hi default link NvimNot NvimUnaryOperator
hi default link NvimBinaryOperator NvimOperator
hi default link NvimComparison NvimBinaryOperator
hi default link NvimComparisonModifier NvimComparison
hi default link NvimBinaryPlus NvimBinaryOperator
hi default link NvimBinaryMinus NvimBinaryOperator
hi default link NvimConcat NvimBinaryOperator
hi default link NvimConcatOrSubscript NvimConcat
hi default link NvimOr NvimBinaryOperator
hi default link NvimAnd NvimBinaryOperator
hi default link NvimMultiplication NvimBinaryOperator
hi default link NvimDivision NvimBinaryOperator
hi default link NvimMod NvimBinaryOperator
hi default link NvimTernary NvimOperator
hi default link NvimTernaryColon NvimTernary
hi default link NvimParenthesis Delimiter
hi default link NvimLambda NvimParenthesis
hi default link NvimNestingParenthesis NvimParenthesis
hi default link NvimCallingParenthesis NvimParenthesis
hi default link NvimSubscript NvimParenthesis
hi default link NvimSubscriptBracket NvimSubscript
hi default link NvimSubscriptColon NvimSubscript
hi default link NvimCurly NvimSubscript
hi default link NvimContainer NvimParenthesis
hi default link NvimDict NvimContainer
hi default link NvimList NvimContainer
hi default link NvimIdentifier Identifier
hi default link NvimIdentifierScope NvimIdentifier
hi default link NvimIdentifierScopeDelimiter NvimIdentifier
hi default link NvimIdentifierName NvimIdentifier
hi default link NvimIdentifierKey NvimIdentifier
hi default link NvimColon Delimiter
hi default link NvimComma Delimiter
hi default link NvimArrow Delimiter
hi default link NvimRegister SpecialChar
hi default link NvimNumber Number
hi default link NvimFloat NvimNumber
hi default link NvimNumberPrefix Type
hi default link NvimOptionSigil Type
hi default link NvimOptionName NvimIdentifier
hi default link NvimOptionScope NvimIdentifierScope
hi default link NvimOptionScopeDelimiter NvimIdentifierScopeDelimiter
hi default link NvimEnvironmentSigil NvimOptionSigil
hi default link NvimEnvironmentName NvimIdentifier
hi default link NvimString String
hi default link NvimStringBody NvimString
hi default link NvimStringQuote NvimString
hi default link NvimStringSpecial SpecialChar
hi default link NvimSingleQuote NvimStringQuote
hi default link NvimSingleQuotedBody NvimStringBody
hi default link NvimSingleQuotedQuote NvimStringSpecial
hi default link NvimDoubleQuote NvimStringQuote
hi default link NvimDoubleQuotedBody NvimStringBody
hi default link NvimDoubleQuotedEscape NvimStringSpecial
hi default link NvimFigureBrace NvimInternalError
hi default link NvimSingleQuotedUnknownEscape NvimInternalError
hi default link NvimSpacing Normal
" NvimInvalid groups:
hi default link NvimInvalidSingleQuotedUnknownEscape NvimInternalError
hi default link NvimInvalid Error
hi default link NvimInvalidAssignment NvimInvalid
hi default link NvimInvalidPlainAssignment NvimInvalidAssignment
hi default link NvimInvalidAugmentedAssignment NvimInvalidAssignment
hi default link NvimInvalidAssignmentWithAddition NvimInvalidAugmentedAssignment
hi default link NvimInvalidAssignmentWithSubtraction NvimInvalidAugmentedAssignment
hi default link NvimInvalidAssignmentWithConcatenation NvimInvalidAugmentedAssignment
hi default link NvimInvalidOperator NvimInvalid
hi default link NvimInvalidUnaryOperator NvimInvalidOperator
hi default link NvimInvalidUnaryPlus NvimInvalidUnaryOperator
hi default link NvimInvalidUnaryMinus NvimInvalidUnaryOperator
hi default link NvimInvalidNot NvimInvalidUnaryOperator
hi default link NvimInvalidBinaryOperator NvimInvalidOperator
hi default link NvimInvalidComparison NvimInvalidBinaryOperator
hi default link NvimInvalidComparisonModifier NvimInvalidComparison
hi default link NvimInvalidBinaryPlus NvimInvalidBinaryOperator
hi default link NvimInvalidBinaryMinus NvimInvalidBinaryOperator
hi default link NvimInvalidConcat NvimInvalidBinaryOperator
hi default link NvimInvalidConcatOrSubscript NvimInvalidConcat
hi default link NvimInvalidOr NvimInvalidBinaryOperator
hi default link NvimInvalidAnd NvimInvalidBinaryOperator
hi default link NvimInvalidMultiplication NvimInvalidBinaryOperator
hi default link NvimInvalidDivision NvimInvalidBinaryOperator
hi default link NvimInvalidMod NvimInvalidBinaryOperator
hi default link NvimInvalidTernary NvimInvalidOperator
hi default link NvimInvalidTernaryColon NvimInvalidTernary
hi default link NvimInvalidDelimiter NvimInvalid
hi default link NvimInvalidParenthesis NvimInvalidDelimiter
hi default link NvimInvalidLambda NvimInvalidParenthesis
hi default link NvimInvalidNestingParenthesis NvimInvalidParenthesis
hi default link NvimInvalidCallingParenthesis NvimInvalidParenthesis
hi default link NvimInvalidSubscript NvimInvalidParenthesis
hi default link NvimInvalidSubscriptBracket NvimInvalidSubscript
hi default link NvimInvalidSubscriptColon NvimInvalidSubscript
hi default link NvimInvalidCurly NvimInvalidSubscript
hi default link NvimInvalidContainer NvimInvalidParenthesis
hi default link NvimInvalidDict NvimInvalidContainer
hi default link NvimInvalidList NvimInvalidContainer
hi default link NvimInvalidValue NvimInvalid
hi default link NvimInvalidIdentifier NvimInvalidValue
hi default link NvimInvalidIdentifierScope NvimInvalidIdentifier
hi default link NvimInvalidIdentifierScopeDelimiter NvimInvalidIdentifier
hi default link NvimInvalidIdentifierName NvimInvalidIdentifier
hi default link NvimInvalidIdentifierKey NvimInvalidIdentifier
hi default link NvimInvalidColon NvimInvalidDelimiter
hi default link NvimInvalidComma NvimInvalidDelimiter
hi default link NvimInvalidArrow NvimInvalidDelimiter
hi default link NvimInvalidRegister NvimInvalidValue
hi default link NvimInvalidNumber NvimInvalidValue
hi default link NvimInvalidFloat NvimInvalidNumber
hi default link NvimInvalidNumberPrefix NvimInvalidNumber
hi default link NvimInvalidOptionSigil NvimInvalidIdentifier
hi default link NvimInvalidOptionName NvimInvalidIdentifier
hi default link NvimInvalidOptionScope NvimInvalidIdentifierScope
hi default link NvimInvalidOptionScopeDelimiter NvimInvalidIdentifierScopeDelimiter
hi default link NvimInvalidEnvironmentSigil NvimInvalidOptionSigil
hi default link NvimInvalidEnvironmentName NvimInvalidIdentifier
" Invalid string bodies and specials are still highlighted as valid ones to
" minimize the red area.
hi default link NvimInvalidString NvimInvalidValue
hi default link NvimInvalidStringBody NvimStringBody
hi default link NvimInvalidStringQuote NvimInvalidString
hi default link NvimInvalidStringSpecial NvimStringSpecial
hi default link NvimInvalidSingleQuote NvimInvalidStringQuote
hi default link NvimInvalidSingleQuotedBody NvimInvalidStringBody
hi default link NvimInvalidSingleQuotedQuote NvimInvalidStringSpecial
hi default link NvimInvalidDoubleQuote NvimInvalidStringQuote
hi default link NvimInvalidDoubleQuotedBody NvimInvalidStringBody
hi default link NvimInvalidDoubleQuotedEscape NvimInvalidStringSpecial
hi default link NvimInvalidDoubleQuotedUnknownEscape NvimInvalidValue
hi default link NvimInvalidFigureBrace NvimInvalidDelimiter
hi default link NvimInvalidSpacing ErrorMsg
"Not actually invalid, but we show the user that they are doing something
"wrong.
hi default link NvimDoubleQuotedUnknownEscape NvimInvalidValue

" color_name_table_T color_name_table[] = {
"   // Colors from rgb.txt
"   { "AliceBlue", RGB_(0xf0, 0xf8, 0xff) },
"   { "AntiqueWhite", RGB_(0xfa, 0xeb, 0xd7) },
"   { "AntiqueWhite1", RGB_(0xff, 0xef, 0xdb) },
"   { "AntiqueWhite2", RGB_(0xee, 0xdf, 0xcc) },
"   { "AntiqueWhite3", RGB_(0xcd, 0xc0, 0xb0) },
"   { "AntiqueWhite4", RGB_(0x8b, 0x83, 0x78) },
"   { "Aqua", RGB_(0x00, 0xff, 0xff) },
"   { "Aquamarine", RGB_(0x7f, 0xff, 0xd4) },
"   { "Aquamarine1", RGB_(0x7f, 0xff, 0xd4) },
"   { "Aquamarine2", RGB_(0x76, 0xee, 0xc6) },
"   { "Aquamarine3", RGB_(0x66, 0xcd, 0xaa) },
"   { "Aquamarine4", RGB_(0x45, 0x8b, 0x74) },
"   { "Azure", RGB_(0xf0, 0xff, 0xff) },
"   { "Azure1", RGB_(0xf0, 0xff, 0xff) },
"   { "Azure2", RGB_(0xe0, 0xee, 0xee) },
"   { "Azure3", RGB_(0xc1, 0xcd, 0xcd) },
"   { "Azure4", RGB_(0x83, 0x8b, 0x8b) },
"   { "Beige", RGB_(0xf5, 0xf5, 0xdc) },
"   { "Bisque", RGB_(0xff, 0xe4, 0xc4) },
"   { "Bisque1", RGB_(0xff, 0xe4, 0xc4) },
"   { "Bisque2", RGB_(0xee, 0xd5, 0xb7) },
"   { "Bisque3", RGB_(0xcd, 0xb7, 0x9e) },
"   { "Bisque4", RGB_(0x8b, 0x7d, 0x6b) },
"   { "Black", RGB_(0x00, 0x00, 0x00) },
"   { "BlanchedAlmond", RGB_(0xff, 0xeb, 0xcd) },
"   { "Blue", RGB_(0x00, 0x00, 0xff) },
"   { "Blue1", RGB_(0x0, 0x0, 0xff) },
"   { "Blue2", RGB_(0x0, 0x0, 0xee) },
"   { "Blue3", RGB_(0x0, 0x0, 0xcd) },
"   { "Blue4", RGB_(0x0, 0x0, 0x8b) },
"   { "BlueViolet", RGB_(0x8a, 0x2b, 0xe2) },
"   { "Brown", RGB_(0xa5, 0x2a, 0x2a) },
"   { "Brown1", RGB_(0xff, 0x40, 0x40) },
"   { "Brown2", RGB_(0xee, 0x3b, 0x3b) },
"   { "Brown3", RGB_(0xcd, 0x33, 0x33) },
"   { "Brown4", RGB_(0x8b, 0x23, 0x23) },
"   { "BurlyWood", RGB_(0xde, 0xb8, 0x87) },
"   { "Burlywood1", RGB_(0xff, 0xd3, 0x9b) },
"   { "Burlywood2", RGB_(0xee, 0xc5, 0x91) },
"   { "Burlywood3", RGB_(0xcd, 0xaa, 0x7d) },
"   { "Burlywood4", RGB_(0x8b, 0x73, 0x55) },
"   { "CadetBlue", RGB_(0x5f, 0x9e, 0xa0) },
"   { "CadetBlue1", RGB_(0x98, 0xf5, 0xff) },
"   { "CadetBlue2", RGB_(0x8e, 0xe5, 0xee) },
"   { "CadetBlue3", RGB_(0x7a, 0xc5, 0xcd) },
"   { "CadetBlue4", RGB_(0x53, 0x86, 0x8b) },
"   { "ChartReuse", RGB_(0x7f, 0xff, 0x00) },
"   { "Chartreuse1", RGB_(0x7f, 0xff, 0x0) },
"   { "Chartreuse2", RGB_(0x76, 0xee, 0x0) },
"   { "Chartreuse3", RGB_(0x66, 0xcd, 0x0) },
"   { "Chartreuse4", RGB_(0x45, 0x8b, 0x0) },
"   { "Chocolate", RGB_(0xd2, 0x69, 0x1e) },
"   { "Chocolate1", RGB_(0xff, 0x7f, 0x24) },
"   { "Chocolate2", RGB_(0xee, 0x76, 0x21) },
"   { "Chocolate3", RGB_(0xcd, 0x66, 0x1d) },
"   { "Chocolate4", RGB_(0x8b, 0x45, 0x13) },
"   { "Coral", RGB_(0xff, 0x7f, 0x50) },
"   { "Coral1", RGB_(0xff, 0x72, 0x56) },
"   { "Coral2", RGB_(0xee, 0x6a, 0x50) },
"   { "Coral3", RGB_(0xcd, 0x5b, 0x45) },
"   { "Coral4", RGB_(0x8b, 0x3e, 0x2f) },
"   { "CornFlowerBlue", RGB_(0x64, 0x95, 0xed) },
"   { "Cornsilk", RGB_(0xff, 0xf8, 0xdc) },
"   { "Cornsilk1", RGB_(0xff, 0xf8, 0xdc) },
"   { "Cornsilk2", RGB_(0xee, 0xe8, 0xcd) },
"   { "Cornsilk3", RGB_(0xcd, 0xc8, 0xb1) },
"   { "Cornsilk4", RGB_(0x8b, 0x88, 0x78) },
"   { "Crimson", RGB_(0xdc, 0x14, 0x3c) },
"   { "Cyan", RGB_(0x00, 0xff, 0xff) },
"   { "Cyan1", RGB_(0x0, 0xff, 0xff) },
"   { "Cyan2", RGB_(0x0, 0xee, 0xee) },
"   { "Cyan3", RGB_(0x0, 0xcd, 0xcd) },
"   { "Cyan4", RGB_(0x0, 0x8b, 0x8b) },
"   { "DarkBlue", RGB_(0x00, 0x00, 0x8b) },
"   { "DarkCyan", RGB_(0x00, 0x8b, 0x8b) },
"   { "DarkGoldenRod", RGB_(0xb8, 0x86, 0x0b) },
"   { "DarkGoldenrod1", RGB_(0xff, 0xb9, 0xf) },
"   { "DarkGoldenrod2", RGB_(0xee, 0xad, 0xe) },
"   { "DarkGoldenrod3", RGB_(0xcd, 0x95, 0xc) },
"   { "DarkGoldenrod4", RGB_(0x8b, 0x65, 0x8) },
"   { "DarkGray", RGB_(0xa9, 0xa9, 0xa9) },
"   { "DarkGreen", RGB_(0x00, 0x64, 0x00) },
"   { "DarkGrey", RGB_(0xa9, 0xa9, 0xa9) },
"   { "DarkKhaki", RGB_(0xbd, 0xb7, 0x6b) },
"   { "DarkMagenta", RGB_(0x8b, 0x00, 0x8b) },
"   { "DarkOliveGreen", RGB_(0x55, 0x6b, 0x2f) },
"   { "DarkOliveGreen1", RGB_(0xca, 0xff, 0x70) },
"   { "DarkOliveGreen2", RGB_(0xbc, 0xee, 0x68) },
"   { "DarkOliveGreen3", RGB_(0xa2, 0xcd, 0x5a) },
"   { "DarkOliveGreen4", RGB_(0x6e, 0x8b, 0x3d) },
"   { "DarkOrange", RGB_(0xff, 0x8c, 0x00) },
"   { "DarkOrange1", RGB_(0xff, 0x7f, 0x0) },
"   { "DarkOrange2", RGB_(0xee, 0x76, 0x0) },
"   { "DarkOrange3", RGB_(0xcd, 0x66, 0x0) },
"   { "DarkOrange4", RGB_(0x8b, 0x45, 0x0) },
"   { "DarkOrchid", RGB_(0x99, 0x32, 0xcc) },
"   { "DarkOrchid1", RGB_(0xbf, 0x3e, 0xff) },
"   { "DarkOrchid2", RGB_(0xb2, 0x3a, 0xee) },
"   { "DarkOrchid3", RGB_(0x9a, 0x32, 0xcd) },
"   { "DarkOrchid4", RGB_(0x68, 0x22, 0x8b) },
"   { "DarkRed", RGB_(0x8b, 0x00, 0x00) },
"   { "DarkSalmon", RGB_(0xe9, 0x96, 0x7a) },
"   { "DarkSeaGreen", RGB_(0x8f, 0xbc, 0x8f) },
"   { "DarkSeaGreen1", RGB_(0xc1, 0xff, 0xc1) },
"   { "DarkSeaGreen2", RGB_(0xb4, 0xee, 0xb4) },
"   { "DarkSeaGreen3", RGB_(0x9b, 0xcd, 0x9b) },
"   { "DarkSeaGreen4", RGB_(0x69, 0x8b, 0x69) },
"   { "DarkSlateBlue", RGB_(0x48, 0x3d, 0x8b) },
"   { "DarkSlateGray", RGB_(0x2f, 0x4f, 0x4f) },
"   { "DarkSlateGray1", RGB_(0x97, 0xff, 0xff) },
"   { "DarkSlateGray2", RGB_(0x8d, 0xee, 0xee) },
"   { "DarkSlateGray3", RGB_(0x79, 0xcd, 0xcd) },
"   { "DarkSlateGray4", RGB_(0x52, 0x8b, 0x8b) },
"   { "DarkSlateGrey", RGB_(0x2f, 0x4f, 0x4f) },
"   { "DarkTurquoise", RGB_(0x00, 0xce, 0xd1) },
"   { "DarkViolet", RGB_(0x94, 0x00, 0xd3) },
"   { "DarkYellow", RGB_(0xbb, 0xbb, 0x00) },
"   { "DeepPink", RGB_(0xff, 0x14, 0x93) },
"   { "DeepPink1", RGB_(0xff, 0x14, 0x93) },
"   { "DeepPink2", RGB_(0xee, 0x12, 0x89) },
"   { "DeepPink3", RGB_(0xcd, 0x10, 0x76) },
"   { "DeepPink4", RGB_(0x8b, 0xa, 0x50) },
"   { "DeepSkyBlue", RGB_(0x00, 0xbf, 0xff) },
"   { "DeepSkyBlue1", RGB_(0x0, 0xbf, 0xff) },
"   { "DeepSkyBlue2", RGB_(0x0, 0xb2, 0xee) },
"   { "DeepSkyBlue3", RGB_(0x0, 0x9a, 0xcd) },
"   { "DeepSkyBlue4", RGB_(0x0, 0x68, 0x8b) },
"   { "DimGray", RGB_(0x69, 0x69, 0x69) },
"   { "DimGrey", RGB_(0x69, 0x69, 0x69) },
"   { "DodgerBlue", RGB_(0x1e, 0x90, 0xff) },
"   { "DodgerBlue1", RGB_(0x1e, 0x90, 0xff) },
"   { "DodgerBlue2", RGB_(0x1c, 0x86, 0xee) },
"   { "DodgerBlue3", RGB_(0x18, 0x74, 0xcd) },
"   { "DodgerBlue4", RGB_(0x10, 0x4e, 0x8b) },
"   { "Firebrick", RGB_(0xb2, 0x22, 0x22) },
"   { "Firebrick1", RGB_(0xff, 0x30, 0x30) },
"   { "Firebrick2", RGB_(0xee, 0x2c, 0x2c) },
"   { "Firebrick3", RGB_(0xcd, 0x26, 0x26) },
"   { "Firebrick4", RGB_(0x8b, 0x1a, 0x1a) },
"   { "FloralWhite", RGB_(0xff, 0xfa, 0xf0) },
"   { "ForestGreen", RGB_(0x22, 0x8b, 0x22) },
"   { "Fuchsia", RGB_(0xff, 0x00, 0xff) },
"   { "Gainsboro", RGB_(0xdc, 0xdc, 0xdc) },
"   { "GhostWhite", RGB_(0xf8, 0xf8, 0xff) },
"   { "Gold", RGB_(0xff, 0xd7, 0x00) },
"   { "Gold1", RGB_(0xff, 0xd7, 0x0) },
"   { "Gold2", RGB_(0xee, 0xc9, 0x0) },
"   { "Gold3", RGB_(0xcd, 0xad, 0x0) },
"   { "Gold4", RGB_(0x8b, 0x75, 0x0) },
"   { "GoldenRod", RGB_(0xda, 0xa5, 0x20) },
"   { "Goldenrod1", RGB_(0xff, 0xc1, 0x25) },
"   { "Goldenrod2", RGB_(0xee, 0xb4, 0x22) },
"   { "Goldenrod3", RGB_(0xcd, 0x9b, 0x1d) },
"   { "Goldenrod4", RGB_(0x8b, 0x69, 0x14) },
"   { "Gray", RGB_(0x80, 0x80, 0x80) },
"   { "Gray0", RGB_(0x0, 0x0, 0x0) },
"   { "Gray1", RGB_(0x3, 0x3, 0x3) },
"   { "Gray10", RGB_(0x1a, 0x1a, 0x1a) },
"   { "Gray100", RGB_(0xff, 0xff, 0xff) },
"   { "Gray11", RGB_(0x1c, 0x1c, 0x1c) },
"   { "Gray12", RGB_(0x1f, 0x1f, 0x1f) },
"   { "Gray13", RGB_(0x21, 0x21, 0x21) },
"   { "Gray14", RGB_(0x24, 0x24, 0x24) },
"   { "Gray15", RGB_(0x26, 0x26, 0x26) },
"   { "Gray16", RGB_(0x29, 0x29, 0x29) },
"   { "Gray17", RGB_(0x2b, 0x2b, 0x2b) },
"   { "Gray18", RGB_(0x2e, 0x2e, 0x2e) },
"   { "Gray19", RGB_(0x30, 0x30, 0x30) },
"   { "Gray2", RGB_(0x5, 0x5, 0x5) },
"   { "Gray20", RGB_(0x33, 0x33, 0x33) },
"   { "Gray21", RGB_(0x36, 0x36, 0x36) },
"   { "Gray22", RGB_(0x38, 0x38, 0x38) },
"   { "Gray23", RGB_(0x3b, 0x3b, 0x3b) },
"   { "Gray24", RGB_(0x3d, 0x3d, 0x3d) },
"   { "Gray25", RGB_(0x40, 0x40, 0x40) },
"   { "Gray26", RGB_(0x42, 0x42, 0x42) },
"   { "Gray27", RGB_(0x45, 0x45, 0x45) },
"   { "Gray28", RGB_(0x47, 0x47, 0x47) },
"   { "Gray29", RGB_(0x4a, 0x4a, 0x4a) },
"   { "Gray3", RGB_(0x8, 0x8, 0x8) },
"   { "Gray30", RGB_(0x4d, 0x4d, 0x4d) },
"   { "Gray31", RGB_(0x4f, 0x4f, 0x4f) },
"   { "Gray32", RGB_(0x52, 0x52, 0x52) },
"   { "Gray33", RGB_(0x54, 0x54, 0x54) },
"   { "Gray34", RGB_(0x57, 0x57, 0x57) },
"   { "Gray35", RGB_(0x59, 0x59, 0x59) },
"   { "Gray36", RGB_(0x5c, 0x5c, 0x5c) },
"   { "Gray37", RGB_(0x5e, 0x5e, 0x5e) },
"   { "Gray38", RGB_(0x61, 0x61, 0x61) },
"   { "Gray39", RGB_(0x63, 0x63, 0x63) },
"   { "Gray4", RGB_(0xa, 0xa, 0xa) },
"   { "Gray40", RGB_(0x66, 0x66, 0x66) },
"   { "Gray41", RGB_(0x69, 0x69, 0x69) },
"   { "Gray42", RGB_(0x6b, 0x6b, 0x6b) },
"   { "Gray43", RGB_(0x6e, 0x6e, 0x6e) },
"   { "Gray44", RGB_(0x70, 0x70, 0x70) },
"   { "Gray45", RGB_(0x73, 0x73, 0x73) },
"   { "Gray46", RGB_(0x75, 0x75, 0x75) },
"   { "Gray47", RGB_(0x78, 0x78, 0x78) },
"   { "Gray48", RGB_(0x7a, 0x7a, 0x7a) },
"   { "Gray49", RGB_(0x7d, 0x7d, 0x7d) },
"   { "Gray5", RGB_(0xd, 0xd, 0xd) },
"   { "Gray50", RGB_(0x7f, 0x7f, 0x7f) },
"   { "Gray51", RGB_(0x82, 0x82, 0x82) },
"   { "Gray52", RGB_(0x85, 0x85, 0x85) },
"   { "Gray53", RGB_(0x87, 0x87, 0x87) },
"   { "Gray54", RGB_(0x8a, 0x8a, 0x8a) },
"   { "Gray55", RGB_(0x8c, 0x8c, 0x8c) },
"   { "Gray56", RGB_(0x8f, 0x8f, 0x8f) },
"   { "Gray57", RGB_(0x91, 0x91, 0x91) },
"   { "Gray58", RGB_(0x94, 0x94, 0x94) },
"   { "Gray59", RGB_(0x96, 0x96, 0x96) },
"   { "Gray6", RGB_(0xf, 0xf, 0xf) },
"   { "Gray60", RGB_(0x99, 0x99, 0x99) },
"   { "Gray61", RGB_(0x9c, 0x9c, 0x9c) },
"   { "Gray62", RGB_(0x9e, 0x9e, 0x9e) },
"   { "Gray63", RGB_(0xa1, 0xa1, 0xa1) },
"   { "Gray64", RGB_(0xa3, 0xa3, 0xa3) },
"   { "Gray65", RGB_(0xa6, 0xa6, 0xa6) },
"   { "Gray66", RGB_(0xa8, 0xa8, 0xa8) },
"   { "Gray67", RGB_(0xab, 0xab, 0xab) },
"   { "Gray68", RGB_(0xad, 0xad, 0xad) },
"   { "Gray69", RGB_(0xb0, 0xb0, 0xb0) },
"   { "Gray7", RGB_(0x12, 0x12, 0x12) },
"   { "Gray70", RGB_(0xb3, 0xb3, 0xb3) },
"   { "Gray71", RGB_(0xb5, 0xb5, 0xb5) },
"   { "Gray72", RGB_(0xb8, 0xb8, 0xb8) },
"   { "Gray73", RGB_(0xba, 0xba, 0xba) },
"   { "Gray74", RGB_(0xbd, 0xbd, 0xbd) },
"   { "Gray75", RGB_(0xbf, 0xbf, 0xbf) },
"   { "Gray76", RGB_(0xc2, 0xc2, 0xc2) },
"   { "Gray77", RGB_(0xc4, 0xc4, 0xc4) },
"   { "Gray78", RGB_(0xc7, 0xc7, 0xc7) },
"   { "Gray79", RGB_(0xc9, 0xc9, 0xc9) },
"   { "Gray8", RGB_(0x14, 0x14, 0x14) },
"   { "Gray80", RGB_(0xcc, 0xcc, 0xcc) },
"   { "Gray81", RGB_(0xcf, 0xcf, 0xcf) },
"   { "Gray82", RGB_(0xd1, 0xd1, 0xd1) },
"   { "Gray83", RGB_(0xd4, 0xd4, 0xd4) },
"   { "Gray84", RGB_(0xd6, 0xd6, 0xd6) },
"   { "Gray85", RGB_(0xd9, 0xd9, 0xd9) },
"   { "Gray86", RGB_(0xdb, 0xdb, 0xdb) },
"   { "Gray87", RGB_(0xde, 0xde, 0xde) },
"   { "Gray88", RGB_(0xe0, 0xe0, 0xe0) },
"   { "Gray89", RGB_(0xe3, 0xe3, 0xe3) },
"   { "Gray9", RGB_(0x17, 0x17, 0x17) },
"   { "Gray90", RGB_(0xe5, 0xe5, 0xe5) },
"   { "Gray91", RGB_(0xe8, 0xe8, 0xe8) },
"   { "Gray92", RGB_(0xeb, 0xeb, 0xeb) },
"   { "Gray93", RGB_(0xed, 0xed, 0xed) },
"   { "Gray94", RGB_(0xf0, 0xf0, 0xf0) },
"   { "Gray95", RGB_(0xf2, 0xf2, 0xf2) },
"   { "Gray96", RGB_(0xf5, 0xf5, 0xf5) },
"   { "Gray97", RGB_(0xf7, 0xf7, 0xf7) },
"   { "Gray98", RGB_(0xfa, 0xfa, 0xfa) },
"   { "Gray99", RGB_(0xfc, 0xfc, 0xfc) },
"   { "Green", RGB_(0x00, 0x80, 0x00) },
"   { "Green1", RGB_(0x0, 0xff, 0x0) },
"   { "Green2", RGB_(0x0, 0xee, 0x0) },
"   { "Green3", RGB_(0x0, 0xcd, 0x0) },
"   { "Green4", RGB_(0x0, 0x8b, 0x0) },
"   { "GreenYellow", RGB_(0xad, 0xff, 0x2f) },
"   { "Grey", RGB_(0x80, 0x80, 0x80) },
"   { "Grey0", RGB_(0x0, 0x0, 0x0) },
"   { "Grey1", RGB_(0x3, 0x3, 0x3) },
"   { "Grey10", RGB_(0x1a, 0x1a, 0x1a) },
"   { "Grey100", RGB_(0xff, 0xff, 0xff) },
"   { "Grey11", RGB_(0x1c, 0x1c, 0x1c) },
"   { "Grey12", RGB_(0x1f, 0x1f, 0x1f) },
"   { "Grey13", RGB_(0x21, 0x21, 0x21) },
"   { "Grey14", RGB_(0x24, 0x24, 0x24) },
"   { "Grey15", RGB_(0x26, 0x26, 0x26) },
"   { "Grey16", RGB_(0x29, 0x29, 0x29) },
"   { "Grey17", RGB_(0x2b, 0x2b, 0x2b) },
"   { "Grey18", RGB_(0x2e, 0x2e, 0x2e) },
"   { "Grey19", RGB_(0x30, 0x30, 0x30) },
"   { "Grey2", RGB_(0x5, 0x5, 0x5) },
"   { "Grey20", RGB_(0x33, 0x33, 0x33) },
"   { "Grey21", RGB_(0x36, 0x36, 0x36) },
"   { "Grey22", RGB_(0x38, 0x38, 0x38) },
"   { "Grey23", RGB_(0x3b, 0x3b, 0x3b) },
"   { "Grey24", RGB_(0x3d, 0x3d, 0x3d) },
"   { "Grey25", RGB_(0x40, 0x40, 0x40) },
"   { "Grey26", RGB_(0x42, 0x42, 0x42) },
"   { "Grey27", RGB_(0x45, 0x45, 0x45) },
"   { "Grey28", RGB_(0x47, 0x47, 0x47) },
"   { "Grey29", RGB_(0x4a, 0x4a, 0x4a) },
"   { "Grey3", RGB_(0x8, 0x8, 0x8) },
"   { "Grey30", RGB_(0x4d, 0x4d, 0x4d) },
"   { "Grey31", RGB_(0x4f, 0x4f, 0x4f) },
"   { "Grey32", RGB_(0x52, 0x52, 0x52) },
"   { "Grey33", RGB_(0x54, 0x54, 0x54) },
"   { "Grey34", RGB_(0x57, 0x57, 0x57) },
"   { "Grey35", RGB_(0x59, 0x59, 0x59) },
"   { "Grey36", RGB_(0x5c, 0x5c, 0x5c) },
"   { "Grey37", RGB_(0x5e, 0x5e, 0x5e) },
"   { "Grey38", RGB_(0x61, 0x61, 0x61) },
"   { "Grey39", RGB_(0x63, 0x63, 0x63) },
"   { "Grey4", RGB_(0xa, 0xa, 0xa) },
"   { "Grey40", RGB_(0x66, 0x66, 0x66) },
"   { "Grey41", RGB_(0x69, 0x69, 0x69) },
"   { "Grey42", RGB_(0x6b, 0x6b, 0x6b) },
"   { "Grey43", RGB_(0x6e, 0x6e, 0x6e) },
"   { "Grey44", RGB_(0x70, 0x70, 0x70) },
"   { "Grey45", RGB_(0x73, 0x73, 0x73) },
"   { "Grey46", RGB_(0x75, 0x75, 0x75) },
"   { "Grey47", RGB_(0x78, 0x78, 0x78) },
"   { "Grey48", RGB_(0x7a, 0x7a, 0x7a) },
"   { "Grey49", RGB_(0x7d, 0x7d, 0x7d) },
"   { "Grey5", RGB_(0xd, 0xd, 0xd) },
"   { "Grey50", RGB_(0x7f, 0x7f, 0x7f) },
"   { "Grey51", RGB_(0x82, 0x82, 0x82) },
"   { "Grey52", RGB_(0x85, 0x85, 0x85) },
"   { "Grey53", RGB_(0x87, 0x87, 0x87) },
"   { "Grey54", RGB_(0x8a, 0x8a, 0x8a) },
"   { "Grey55", RGB_(0x8c, 0x8c, 0x8c) },
"   { "Grey56", RGB_(0x8f, 0x8f, 0x8f) },
"   { "Grey57", RGB_(0x91, 0x91, 0x91) },
"   { "Grey58", RGB_(0x94, 0x94, 0x94) },
"   { "Grey59", RGB_(0x96, 0x96, 0x96) },
"   { "Grey6", RGB_(0xf, 0xf, 0xf) },
"   { "Grey60", RGB_(0x99, 0x99, 0x99) },
"   { "Grey61", RGB_(0x9c, 0x9c, 0x9c) },
"   { "Grey62", RGB_(0x9e, 0x9e, 0x9e) },
"   { "Grey63", RGB_(0xa1, 0xa1, 0xa1) },
"   { "Grey64", RGB_(0xa3, 0xa3, 0xa3) },
"   { "Grey65", RGB_(0xa6, 0xa6, 0xa6) },
"   { "Grey66", RGB_(0xa8, 0xa8, 0xa8) },
"   { "Grey67", RGB_(0xab, 0xab, 0xab) },
"   { "Grey68", RGB_(0xad, 0xad, 0xad) },
"   { "Grey69", RGB_(0xb0, 0xb0, 0xb0) },
"   { "Grey7", RGB_(0x12, 0x12, 0x12) },
"   { "Grey70", RGB_(0xb3, 0xb3, 0xb3) },
"   { "Grey71", RGB_(0xb5, 0xb5, 0xb5) },
"   { "Grey72", RGB_(0xb8, 0xb8, 0xb8) },
"   { "Grey73", RGB_(0xba, 0xba, 0xba) },
"   { "Grey74", RGB_(0xbd, 0xbd, 0xbd) },
"   { "Grey75", RGB_(0xbf, 0xbf, 0xbf) },
"   { "Grey76", RGB_(0xc2, 0xc2, 0xc2) },
"   { "Grey77", RGB_(0xc4, 0xc4, 0xc4) },
"   { "Grey78", RGB_(0xc7, 0xc7, 0xc7) },
"   { "Grey79", RGB_(0xc9, 0xc9, 0xc9) },
"   { "Grey8", RGB_(0x14, 0x14, 0x14) },
"   { "Grey80", RGB_(0xcc, 0xcc, 0xcc) },
"   { "Grey81", RGB_(0xcf, 0xcf, 0xcf) },
"   { "Grey82", RGB_(0xd1, 0xd1, 0xd1) },
"   { "Grey83", RGB_(0xd4, 0xd4, 0xd4) },
"   { "Grey84", RGB_(0xd6, 0xd6, 0xd6) },
"   { "Grey85", RGB_(0xd9, 0xd9, 0xd9) },
"   { "Grey86", RGB_(0xdb, 0xdb, 0xdb) },
"   { "Grey87", RGB_(0xde, 0xde, 0xde) },
"   { "Grey88", RGB_(0xe0, 0xe0, 0xe0) },
"   { "Grey89", RGB_(0xe3, 0xe3, 0xe3) },
"   { "Grey9", RGB_(0x17, 0x17, 0x17) },
"   { "Grey90", RGB_(0xe5, 0xe5, 0xe5) },
"   { "Grey91", RGB_(0xe8, 0xe8, 0xe8) },
"   { "Grey92", RGB_(0xeb, 0xeb, 0xeb) },
"   { "Grey93", RGB_(0xed, 0xed, 0xed) },
"   { "Grey94", RGB_(0xf0, 0xf0, 0xf0) },
"   { "Grey95", RGB_(0xf2, 0xf2, 0xf2) },
"   { "Grey96", RGB_(0xf5, 0xf5, 0xf5) },
"   { "Grey97", RGB_(0xf7, 0xf7, 0xf7) },
"   { "Grey98", RGB_(0xfa, 0xfa, 0xfa) },
"   { "Grey99", RGB_(0xfc, 0xfc, 0xfc) },
"   { "Honeydew", RGB_(0xf0, 0xff, 0xf0) },
"   { "Honeydew1", RGB_(0xf0, 0xff, 0xf0) },
"   { "Honeydew2", RGB_(0xe0, 0xee, 0xe0) },
"   { "Honeydew3", RGB_(0xc1, 0xcd, 0xc1) },
"   { "Honeydew4", RGB_(0x83, 0x8b, 0x83) },
"   { "HotPink", RGB_(0xff, 0x69, 0xb4) },
"   { "HotPink1", RGB_(0xff, 0x6e, 0xb4) },
"   { "HotPink2", RGB_(0xee, 0x6a, 0xa7) },
"   { "HotPink3", RGB_(0xcd, 0x60, 0x90) },
"   { "HotPink4", RGB_(0x8b, 0x3a, 0x62) },
"   { "IndianRed", RGB_(0xcd, 0x5c, 0x5c) },
"   { "IndianRed1", RGB_(0xff, 0x6a, 0x6a) },
"   { "IndianRed2", RGB_(0xee, 0x63, 0x63) },
"   { "IndianRed3", RGB_(0xcd, 0x55, 0x55) },
"   { "IndianRed4", RGB_(0x8b, 0x3a, 0x3a) },
"   { "Indigo", RGB_(0x4b, 0x00, 0x82) },
"   { "Ivory", RGB_(0xff, 0xff, 0xf0) },
"   { "Ivory1", RGB_(0xff, 0xff, 0xf0) },
"   { "Ivory2", RGB_(0xee, 0xee, 0xe0) },
"   { "Ivory3", RGB_(0xcd, 0xcd, 0xc1) },
"   { "Ivory4", RGB_(0x8b, 0x8b, 0x83) },
"   { "Khaki", RGB_(0xf0, 0xe6, 0x8c) },
"   { "Khaki1", RGB_(0xff, 0xf6, 0x8f) },
"   { "Khaki2", RGB_(0xee, 0xe6, 0x85) },
"   { "Khaki3", RGB_(0xcd, 0xc6, 0x73) },
"   { "Khaki4", RGB_(0x8b, 0x86, 0x4e) },
"   { "Lavender", RGB_(0xe6, 0xe6, 0xfa) },
"   { "LavenderBlush", RGB_(0xff, 0xf0, 0xf5) },
"   { "LavenderBlush1", RGB_(0xff, 0xf0, 0xf5) },
"   { "LavenderBlush2", RGB_(0xee, 0xe0, 0xe5) },
"   { "LavenderBlush3", RGB_(0xcd, 0xc1, 0xc5) },
"   { "LavenderBlush4", RGB_(0x8b, 0x83, 0x86) },
"   { "LawnGreen", RGB_(0x7c, 0xfc, 0x00) },
"   { "LemonChiffon", RGB_(0xff, 0xfa, 0xcd) },
"   { "LemonChiffon1", RGB_(0xff, 0xfa, 0xcd) },
"   { "LemonChiffon2", RGB_(0xee, 0xe9, 0xbf) },
"   { "LemonChiffon3", RGB_(0xcd, 0xc9, 0xa5) },
"   { "LemonChiffon4", RGB_(0x8b, 0x89, 0x70) },
"   { "LightBlue", RGB_(0xad, 0xd8, 0xe6) },
"   { "LightBlue1", RGB_(0xbf, 0xef, 0xff) },
"   { "LightBlue2", RGB_(0xb2, 0xdf, 0xee) },
"   { "LightBlue3", RGB_(0x9a, 0xc0, 0xcd) },
"   { "LightBlue4", RGB_(0x68, 0x83, 0x8b) },
"   { "LightCoral", RGB_(0xf0, 0x80, 0x80) },
"   { "LightCyan", RGB_(0xe0, 0xff, 0xff) },
"   { "LightCyan1", RGB_(0xe0, 0xff, 0xff) },
"   { "LightCyan2", RGB_(0xd1, 0xee, 0xee) },
"   { "LightCyan3", RGB_(0xb4, 0xcd, 0xcd) },
"   { "LightCyan4", RGB_(0x7a, 0x8b, 0x8b) },
"   { "LightGoldenrod", RGB_(0xee, 0xdd, 0x82) },
"   { "LightGoldenrod1", RGB_(0xff, 0xec, 0x8b) },
"   { "LightGoldenrod2", RGB_(0xee, 0xdc, 0x82) },
"   { "LightGoldenrod3", RGB_(0xcd, 0xbe, 0x70) },
"   { "LightGoldenrod4", RGB_(0x8b, 0x81, 0x4c) },
"   { "LightGoldenRodYellow", RGB_(0xfa, 0xfa, 0xd2) },
"   { "LightGray", RGB_(0xd3, 0xd3, 0xd3) },
"   { "LightGreen", RGB_(0x90, 0xee, 0x90) },
"   { "LightGrey", RGB_(0xd3, 0xd3, 0xd3) },
"   { "LightMagenta", RGB_(0xff, 0xbb, 0xff) },
"   { "LightPink", RGB_(0xff, 0xb6, 0xc1) },
"   { "LightPink1", RGB_(0xff, 0xae, 0xb9) },
"   { "LightPink2", RGB_(0xee, 0xa2, 0xad) },
"   { "LightPink3", RGB_(0xcd, 0x8c, 0x95) },
"   { "LightPink4", RGB_(0x8b, 0x5f, 0x65) },
"   { "LightRed", RGB_(0xff, 0xbb, 0xbb) },
"   { "LightSalmon", RGB_(0xff, 0xa0, 0x7a) },
"   { "LightSalmon1", RGB_(0xff, 0xa0, 0x7a) },
"   { "LightSalmon2", RGB_(0xee, 0x95, 0x72) },
"   { "LightSalmon3", RGB_(0xcd, 0x81, 0x62) },
"   { "LightSalmon4", RGB_(0x8b, 0x57, 0x42) },
"   { "LightSeaGreen", RGB_(0x20, 0xb2, 0xaa) },
"   { "LightSkyBlue", RGB_(0x87, 0xce, 0xfa) },
"   { "LightSkyBlue1", RGB_(0xb0, 0xe2, 0xff) },
"   { "LightSkyBlue2", RGB_(0xa4, 0xd3, 0xee) },
"   { "LightSkyBlue3", RGB_(0x8d, 0xb6, 0xcd) },
"   { "LightSkyBlue4", RGB_(0x60, 0x7b, 0x8b) },
"   { "LightSlateBlue", RGB_(0x84, 0x70, 0xff) },
"   { "LightSlateGray", RGB_(0x77, 0x88, 0x99) },
"   { "LightSlateGrey", RGB_(0x77, 0x88, 0x99) },
"   { "LightSteelBlue", RGB_(0xb0, 0xc4, 0xde) },
"   { "LightSteelBlue1", RGB_(0xca, 0xe1, 0xff) },
"   { "LightSteelBlue2", RGB_(0xbc, 0xd2, 0xee) },
"   { "LightSteelBlue3", RGB_(0xa2, 0xb5, 0xcd) },
"   { "LightSteelBlue4", RGB_(0x6e, 0x7b, 0x8b) },
"   { "LightYellow", RGB_(0xff, 0xff, 0xe0) },
"   { "LightYellow1", RGB_(0xff, 0xff, 0xe0) },
"   { "LightYellow2", RGB_(0xee, 0xee, 0xd1) },
"   { "LightYellow3", RGB_(0xcd, 0xcd, 0xb4) },
"   { "LightYellow4", RGB_(0x8b, 0x8b, 0x7a) },
"   { "Lime", RGB_(0x00, 0xff, 0x00) },
"   { "LimeGreen", RGB_(0x32, 0xcd, 0x32) },
"   { "Linen", RGB_(0xfa, 0xf0, 0xe6) },
"   { "Magenta", RGB_(0xff, 0x00, 0xff) },
"   { "Magenta1", RGB_(0xff, 0x0, 0xff) },
"   { "Magenta2", RGB_(0xee, 0x0, 0xee) },
"   { "Magenta3", RGB_(0xcd, 0x0, 0xcd) },
"   { "Magenta4", RGB_(0x8b, 0x0, 0x8b) },
"   { "Maroon", RGB_(0x80, 0x00, 0x00) },
"   { "Maroon1", RGB_(0xff, 0x34, 0xb3) },
"   { "Maroon2", RGB_(0xee, 0x30, 0xa7) },
"   { "Maroon3", RGB_(0xcd, 0x29, 0x90) },
"   { "Maroon4", RGB_(0x8b, 0x1c, 0x62) },
"   { "MediumAquamarine", RGB_(0x66, 0xcd, 0xaa) },
"   { "MediumBlue", RGB_(0x00, 0x00, 0xcd) },
"   { "MediumOrchid", RGB_(0xba, 0x55, 0xd3) },
"   { "MediumOrchid1", RGB_(0xe0, 0x66, 0xff) },
"   { "MediumOrchid2", RGB_(0xd1, 0x5f, 0xee) },
"   { "MediumOrchid3", RGB_(0xb4, 0x52, 0xcd) },
"   { "MediumOrchid4", RGB_(0x7a, 0x37, 0x8b) },
"   { "MediumPurple", RGB_(0x93, 0x70, 0xdb) },
"   { "MediumPurple1", RGB_(0xab, 0x82, 0xff) },
"   { "MediumPurple2", RGB_(0x9f, 0x79, 0xee) },
"   { "MediumPurple3", RGB_(0x89, 0x68, 0xcd) },
"   { "MediumPurple4", RGB_(0x5d, 0x47, 0x8b) },
"   { "MediumSeaGreen", RGB_(0x3c, 0xb3, 0x71) },
"   { "MediumSlateBlue", RGB_(0x7b, 0x68, 0xee) },
"   { "MediumSpringGreen", RGB_(0x00, 0xfa, 0x9a) },
"   { "MediumTurquoise", RGB_(0x48, 0xd1, 0xcc) },
"   { "MediumVioletRed", RGB_(0xc7, 0x15, 0x85) },
"   { "MidnightBlue", RGB_(0x19, 0x19, 0x70) },
"   { "MintCream", RGB_(0xf5, 0xff, 0xfa) },
"   { "MistyRose", RGB_(0xff, 0xe4, 0xe1) },
"   { "MistyRose1", RGB_(0xff, 0xe4, 0xe1) },
"   { "MistyRose2", RGB_(0xee, 0xd5, 0xd2) },
"   { "MistyRose3", RGB_(0xcd, 0xb7, 0xb5) },
"   { "MistyRose4", RGB_(0x8b, 0x7d, 0x7b) },
"   { "Moccasin", RGB_(0xff, 0xe4, 0xb5) },
"   { "NavajoWhite", RGB_(0xff, 0xde, 0xad) },
"   { "NavajoWhite1", RGB_(0xff, 0xde, 0xad) },
"   { "NavajoWhite2", RGB_(0xee, 0xcf, 0xa1) },
"   { "NavajoWhite3", RGB_(0xcd, 0xb3, 0x8b) },
"   { "NavajoWhite4", RGB_(0x8b, 0x79, 0x5e) },
"   { "Navy", RGB_(0x00, 0x00, 0x80) },
"   { "NavyBlue", RGB_(0x0, 0x0, 0x80) },
"   { "OldLace", RGB_(0xfd, 0xf5, 0xe6) },
"   { "Olive", RGB_(0x80, 0x80, 0x00) },
"   { "OliveDrab", RGB_(0x6b, 0x8e, 0x23) },
"   { "OliveDrab1", RGB_(0xc0, 0xff, 0x3e) },
"   { "OliveDrab2", RGB_(0xb3, 0xee, 0x3a) },
"   { "OliveDrab3", RGB_(0x9a, 0xcd, 0x32) },
"   { "OliveDrab4", RGB_(0x69, 0x8b, 0x22) },
"   { "Orange", RGB_(0xff, 0xa5, 0x00) },
"   { "Orange1", RGB_(0xff, 0xa5, 0x0) },
"   { "Orange2", RGB_(0xee, 0x9a, 0x0) },
"   { "Orange3", RGB_(0xcd, 0x85, 0x0) },
"   { "Orange4", RGB_(0x8b, 0x5a, 0x0) },
"   { "OrangeRed", RGB_(0xff, 0x45, 0x00) },
"   { "OrangeRed1", RGB_(0xff, 0x45, 0x0) },
"   { "OrangeRed2", RGB_(0xee, 0x40, 0x0) },
"   { "OrangeRed3", RGB_(0xcd, 0x37, 0x0) },
"   { "OrangeRed4", RGB_(0x8b, 0x25, 0x0) },
"   { "Orchid", RGB_(0xda, 0x70, 0xd6) },
"   { "Orchid1", RGB_(0xff, 0x83, 0xfa) },
"   { "Orchid2", RGB_(0xee, 0x7a, 0xe9) },
"   { "Orchid3", RGB_(0xcd, 0x69, 0xc9) },
"   { "Orchid4", RGB_(0x8b, 0x47, 0x89) },
"   { "PaleGoldenRod", RGB_(0xee, 0xe8, 0xaa) },
"   { "PaleGreen", RGB_(0x98, 0xfb, 0x98) },
"   { "PaleGreen1", RGB_(0x9a, 0xff, 0x9a) },
"   { "PaleGreen2", RGB_(0x90, 0xee, 0x90) },
"   { "PaleGreen3", RGB_(0x7c, 0xcd, 0x7c) },
"   { "PaleGreen4", RGB_(0x54, 0x8b, 0x54) },
"   { "PaleTurquoise", RGB_(0xaf, 0xee, 0xee) },
"   { "PaleTurquoise1", RGB_(0xbb, 0xff, 0xff) },
"   { "PaleTurquoise2", RGB_(0xae, 0xee, 0xee) },
"   { "PaleTurquoise3", RGB_(0x96, 0xcd, 0xcd) },
"   { "PaleTurquoise4", RGB_(0x66, 0x8b, 0x8b) },
"   { "PaleVioletRed", RGB_(0xdb, 0x70, 0x93) },
"   { "PaleVioletRed1", RGB_(0xff, 0x82, 0xab) },
"   { "PaleVioletRed2", RGB_(0xee, 0x79, 0x9f) },
"   { "PaleVioletRed3", RGB_(0xcd, 0x68, 0x89) },
"   { "PaleVioletRed4", RGB_(0x8b, 0x47, 0x5d) },
"   { "PapayaWhip", RGB_(0xff, 0xef, 0xd5) },
"   { "PeachPuff", RGB_(0xff, 0xda, 0xb9) },
"   { "PeachPuff1", RGB_(0xff, 0xda, 0xb9) },
"   { "PeachPuff2", RGB_(0xee, 0xcb, 0xad) },
"   { "PeachPuff3", RGB_(0xcd, 0xaf, 0x95) },
"   { "PeachPuff4", RGB_(0x8b, 0x77, 0x65) },
"   { "Peru", RGB_(0xcd, 0x85, 0x3f) },
"   { "Pink", RGB_(0xff, 0xc0, 0xcb) },
"   { "Pink1", RGB_(0xff, 0xb5, 0xc5) },
"   { "Pink2", RGB_(0xee, 0xa9, 0xb8) },
"   { "Pink3", RGB_(0xcd, 0x91, 0x9e) },
"   { "Pink4", RGB_(0x8b, 0x63, 0x6c) },
"   { "Plum", RGB_(0xdd, 0xa0, 0xdd) },
"   { "Plum1", RGB_(0xff, 0xbb, 0xff) },
"   { "Plum2", RGB_(0xee, 0xae, 0xee) },
"   { "Plum3", RGB_(0xcd, 0x96, 0xcd) },
"   { "Plum4", RGB_(0x8b, 0x66, 0x8b) },
"   { "PowderBlue", RGB_(0xb0, 0xe0, 0xe6) },
"   { "Purple", RGB_(0x80, 0x00, 0x80) },
"   { "Purple1", RGB_(0x9b, 0x30, 0xff) },
"   { "Purple2", RGB_(0x91, 0x2c, 0xee) },
"   { "Purple3", RGB_(0x7d, 0x26, 0xcd) },
"   { "Purple4", RGB_(0x55, 0x1a, 0x8b) },
"   { "RebeccaPurple", RGB_(0x66, 0x33, 0x99) },
"   { "Red", RGB_(0xff, 0x00, 0x00) },
"   { "Red1", RGB_(0xff, 0x0, 0x0) },
"   { "Red2", RGB_(0xee, 0x0, 0x0) },
"   { "Red3", RGB_(0xcd, 0x0, 0x0) },
"   { "Red4", RGB_(0x8b, 0x0, 0x0) },
"   { "RosyBrown", RGB_(0xbc, 0x8f, 0x8f) },
"   { "RosyBrown1", RGB_(0xff, 0xc1, 0xc1) },
"   { "RosyBrown2", RGB_(0xee, 0xb4, 0xb4) },
"   { "RosyBrown3", RGB_(0xcd, 0x9b, 0x9b) },
"   { "RosyBrown4", RGB_(0x8b, 0x69, 0x69) },
"   { "RoyalBlue", RGB_(0x41, 0x69, 0xe1) },
"   { "RoyalBlue1", RGB_(0x48, 0x76, 0xff) },
"   { "RoyalBlue2", RGB_(0x43, 0x6e, 0xee) },
"   { "RoyalBlue3", RGB_(0x3a, 0x5f, 0xcd) },
"   { "RoyalBlue4", RGB_(0x27, 0x40, 0x8b) },
"   { "SaddleBrown", RGB_(0x8b, 0x45, 0x13) },
"   { "Salmon", RGB_(0xfa, 0x80, 0x72) },
"   { "Salmon1", RGB_(0xff, 0x8c, 0x69) },
"   { "Salmon2", RGB_(0xee, 0x82, 0x62) },
"   { "Salmon3", RGB_(0xcd, 0x70, 0x54) },
"   { "Salmon4", RGB_(0x8b, 0x4c, 0x39) },
"   { "SandyBrown", RGB_(0xf4, 0xa4, 0x60) },
"   { "SeaGreen", RGB_(0x2e, 0x8b, 0x57) },
"   { "SeaGreen1", RGB_(0x54, 0xff, 0x9f) },
"   { "SeaGreen2", RGB_(0x4e, 0xee, 0x94) },
"   { "SeaGreen3", RGB_(0x43, 0xcd, 0x80) },
"   { "SeaGreen4", RGB_(0x2e, 0x8b, 0x57) },
"   { "SeaShell", RGB_(0xff, 0xf5, 0xee) },
"   { "Seashell1", RGB_(0xff, 0xf5, 0xee) },
"   { "Seashell2", RGB_(0xee, 0xe5, 0xde) },
"   { "Seashell3", RGB_(0xcd, 0xc5, 0xbf) },
"   { "Seashell4", RGB_(0x8b, 0x86, 0x82) },
"   { "Sienna", RGB_(0xa0, 0x52, 0x2d) },
"   { "Sienna1", RGB_(0xff, 0x82, 0x47) },
"   { "Sienna2", RGB_(0xee, 0x79, 0x42) },
"   { "Sienna3", RGB_(0xcd, 0x68, 0x39) },
"   { "Sienna4", RGB_(0x8b, 0x47, 0x26) },
"   { "Silver", RGB_(0xc0, 0xc0, 0xc0) },
"   { "SkyBlue", RGB_(0x87, 0xce, 0xeb) },
"   { "SkyBlue1", RGB_(0x87, 0xce, 0xff) },
"   { "SkyBlue2", RGB_(0x7e, 0xc0, 0xee) },
"   { "SkyBlue3", RGB_(0x6c, 0xa6, 0xcd) },
"   { "SkyBlue4", RGB_(0x4a, 0x70, 0x8b) },
"   { "SlateBlue", RGB_(0x6a, 0x5a, 0xcd) },
"   { "SlateBlue1", RGB_(0x83, 0x6f, 0xff) },
"   { "SlateBlue2", RGB_(0x7a, 0x67, 0xee) },
"   { "SlateBlue3", RGB_(0x69, 0x59, 0xcd) },
"   { "SlateBlue4", RGB_(0x47, 0x3c, 0x8b) },
"   { "SlateGray", RGB_(0x70, 0x80, 0x90) },
"   { "SlateGray1", RGB_(0xc6, 0xe2, 0xff) },
"   { "SlateGray2", RGB_(0xb9, 0xd3, 0xee) },
"   { "SlateGray3", RGB_(0x9f, 0xb6, 0xcd) },
"   { "SlateGray4", RGB_(0x6c, 0x7b, 0x8b) },
"   { "SlateGrey", RGB_(0x70, 0x80, 0x90) },
"   { "Snow", RGB_(0xff, 0xfa, 0xfa) },
"   { "Snow1", RGB_(0xff, 0xfa, 0xfa) },
"   { "Snow2", RGB_(0xee, 0xe9, 0xe9) },
"   { "Snow3", RGB_(0xcd, 0xc9, 0xc9) },
"   { "Snow4", RGB_(0x8b, 0x89, 0x89) },
"   { "SpringGreen", RGB_(0x00, 0xff, 0x7f) },
"   { "SpringGreen1", RGB_(0x0, 0xff, 0x7f) },
"   { "SpringGreen2", RGB_(0x0, 0xee, 0x76) },
"   { "SpringGreen3", RGB_(0x0, 0xcd, 0x66) },
"   { "SpringGreen4", RGB_(0x0, 0x8b, 0x45) },
"   { "SteelBlue", RGB_(0x46, 0x82, 0xb4) },
"   { "SteelBlue1", RGB_(0x63, 0xb8, 0xff) },
"   { "SteelBlue2", RGB_(0x5c, 0xac, 0xee) },
"   { "SteelBlue3", RGB_(0x4f, 0x94, 0xcd) },
"   { "SteelBlue4", RGB_(0x36, 0x64, 0x8b) },
"   { "Tan", RGB_(0xd2, 0xb4, 0x8c) },
"   { "Tan1", RGB_(0xff, 0xa5, 0x4f) },
"   { "Tan2", RGB_(0xee, 0x9a, 0x49) },
"   { "Tan3", RGB_(0xcd, 0x85, 0x3f) },
"   { "Tan4", RGB_(0x8b, 0x5a, 0x2b) },
"   { "Teal", RGB_(0x00, 0x80, 0x80) },
"   { "Thistle", RGB_(0xd8, 0xbf, 0xd8) },
"   { "Thistle1", RGB_(0xff, 0xe1, 0xff) },
"   { "Thistle2", RGB_(0xee, 0xd2, 0xee) },
"   { "Thistle3", RGB_(0xcd, 0xb5, 0xcd) },
"   { "Thistle4", RGB_(0x8b, 0x7b, 0x8b) },
"   { "Tomato", RGB_(0xff, 0x63, 0x47) },
"   { "Tomato1", RGB_(0xff, 0x63, 0x47) },
"   { "Tomato2", RGB_(0xee, 0x5c, 0x42) },
"   { "Tomato3", RGB_(0xcd, 0x4f, 0x39) },
"   { "Tomato4", RGB_(0x8b, 0x36, 0x26) },
"   { "Turquoise", RGB_(0x40, 0xe0, 0xd0) },
"   { "Turquoise1", RGB_(0x0, 0xf5, 0xff) },
"   { "Turquoise2", RGB_(0x0, 0xe5, 0xee) },
"   { "Turquoise3", RGB_(0x0, 0xc5, 0xcd) },
"   { "Turquoise4", RGB_(0x0, 0x86, 0x8b) },
"   { "Violet", RGB_(0xee, 0x82, 0xee) },
"   { "VioletRed", RGB_(0xd0, 0x20, 0x90) },
"   { "VioletRed1", RGB_(0xff, 0x3e, 0x96) },
"   { "VioletRed2", RGB_(0xee, 0x3a, 0x8c) },
"   { "VioletRed3", RGB_(0xcd, 0x32, 0x78) },
"   { "VioletRed4", RGB_(0x8b, 0x22, 0x52) },
"   { "WebGray", RGB_(0x80, 0x80, 0x80) },
"   { "WebGreen", RGB_(0x0, 0x80, 0x0) },
"   { "WebGrey", RGB_(0x80, 0x80, 0x80) },
"   { "WebMaroon", RGB_(0x80, 0x0, 0x0) },
"   { "WebPurple", RGB_(0x80, 0x0, 0x80) },
"   { "Wheat", RGB_(0xf5, 0xde, 0xb3) },
"   { "Wheat1", RGB_(0xff, 0xe7, 0xba) },
"   { "Wheat2", RGB_(0xee, 0xd8, 0xae) },
"   { "Wheat3", RGB_(0xcd, 0xba, 0x96) },
"   { "Wheat4", RGB_(0x8b, 0x7e, 0x66) },
"   { "White", RGB_(0xff, 0xff, 0xff) },
"   { "WhiteSmoke", RGB_(0xf5, 0xf5, 0xf5) },
"   { "X11Gray", RGB_(0xbe, 0xbe, 0xbe) },
"   { "X11Green", RGB_(0x0, 0xff, 0x0) },
"   { "X11Grey", RGB_(0xbe, 0xbe, 0xbe) },
"   { "X11Maroon", RGB_(0xb0, 0x30, 0x60) },
"   { "X11Purple", RGB_(0xa0, 0x20, 0xf0) },
"   { "Yellow", RGB_(0xff, 0xff, 0x00) },
"   { "Yellow1", RGB_(0xff, 0xff, 0x0) },
"   { "Yellow2", RGB_(0xee, 0xee, 0x0) },
"   { "Yellow3", RGB_(0xcd, 0xcd, 0x0) },
"   { "Yellow4", RGB_(0x8b, 0x8b, 0x0) },
"   { "YellowGreen", RGB_(0x9a, 0xcd, 0x32) },
"   { NULL, 0 },
" };
