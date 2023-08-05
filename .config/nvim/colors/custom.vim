" Defaults from github.com/neovim/neovim/src/nvim/highlight_group.c made
" ansi.


let g:colors_name = "default-ansi"

hi Conceal      ctermbg=8 ctermfg=7
hi DiffText     cterm=bold ctermbg=1
hi ErrorMsg     ctermbg=1 ctermfg=15
hi IncSearch    cterm=reverse
hi ModeMsg      cterm=bold
hi NonText      ctermfg=4
hi Normal       cterm=NONE
hi PmenuSbar    ctermbg=7
hi StatusLine   cterm=reverse,bold
hi StatusLineNC cterm=reverse
hi TabLineFill  cterm=reverse
hi TabLineSel   cterm=bold
hi TermCursor   cterm=reverse
hi WinBar       cterm=bold
hi WildMenu     ctermbg=3 ctermfg=0
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
hi default link 15space NonText
hi default link MsgSeparator StatusLine
hi default link NormalFloat Pmenu
hi default link FloatBorder WinSeparator
hi default link FloatTitle Title
hi default FloatShadow blend=80 ctermbg=0
hi default FloatShadowThrough blend=100 ctermbg=0
hi 1rawDebugNormal cterm=reverse
hi 1rawDebugClear ctermbg=3
hi 1rawDebugComposed ctermbg=2
hi 1rawDebugRecompose ctermbg=1
hi Error term=reverse cterm=NONE ctermfg=15 ctermbg=1
hi Todo term=standout cterm=NONE ctermfg=0 ctermbg=3
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
hi default DiagnosticError ctermfg=1
hi default DiagnosticWarn ctermfg=3
hi default DiagnosticInfo ctermfg=4
hi default DiagnosticHint ctermfg=7
hi default DiagnosticOk ctermfg=10
hi default DiagnosticUnderlineError cterm=underline
hi default DiagnosticUnderlineWarn cterm=underline
hi default DiagnosticUnderlineInfo cterm=underline
hi default DiagnosticUnderlineHint cterm=underline
hi default DiagnosticUnderlineOk cterm=underline
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
hi default DiagnosticDeprecated cterm=strikethrough
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
	hi ColorColumn  ctermbg=9
	hi CursorColumn ctermbg=7
	hi CursorLine   cterm=underline
	hi CursorLineNr cterm=underline ctermfg=3
	hi DiffAdd      ctermbg=12
	hi DiffChange   ctermbg=13
	hi DiffDelete   ctermfg=4 ctermbg=14
	hi Directory    ctermfg=4
	hi FoldColumn   ctermbg=7 ctermfg=4
	hi Folded       ctermbg=7 ctermfg=4
	hi LineNr       ctermfg=3
	hi MatchParen   ctermbg=6
	hi MoreMsg      ctermfg=2
	hi Pmenu        ctermbg=13 ctermfg=0
	hi PmenuSel     ctermbg=7 ctermfg=0
	hi PmenuThumb   ctermbg=0
	hi Question     ctermfg=2
	hi Search       ctermbg=3 ctermfg=NONE
	hi SignColumn   ctermbg=7 ctermfg=4
	hi SpecialKey   ctermfg=4
	hi SpellBad     ctermbg=9
	hi SpellCap     ctermbg=12
	hi SpellLocal   ctermbg=6
	hi SpellRare    ctermbg=13
	hi TabLine      cterm=underline ctermfg=0 ctermbg=7
	hi Title        ctermfg=5
	hi Visual       ctermbg=7
	hi WarningMsg   ctermfg=1
	hi Comment      term=bold cterm=NONE ctermfg=4 ctermbg=NONE
	hi Constant     term=underline cterm=NONE ctermfg=1 ctermbg=NONE
	hi Special      term=bold cterm=NONE ctermfg=5 ctermbg=NONE
	hi Identifier   term=underline cterm=NONE ctermfg=6 ctermbg=NONE
	hi Statement    term=bold cterm=NONE ctermfg=3 ctermbg=NONE
	hi PreProc      term=underline cterm=NONE ctermfg=5 ctermbg=NONE
	hi Type         term=underline cterm=NONE ctermfg=2 ctermbg=NONE
	hi Underlined   term=underline cterm=underline ctermfg=5
	hi Ignore       term=NONE cterm=NONE ctermfg=15 ctermbg=NONE
endif

" Default colors only used with a dark background.
if &background == 'dark'
	hi ColorColumn  ctermbg=1
	hi CursorColumn ctermbg=8
	hi CursorLine   cterm=underline
	hi CursorLineNr cterm=underline ctermfg=3
	hi DiffAdd      ctermbg=4
	hi DiffChange   ctermbg=5
	hi DiffDelete   ctermfg=4 ctermbg=6
	hi Directory    ctermfg=14
	hi FoldColumn   ctermbg=8 ctermfg=6
	hi Folded       ctermbg=8 ctermfg=6
	hi LineNr       ctermfg=3
	hi MatchParen   ctermbg=6
	hi MoreMsg      ctermfg=10
	hi Pmenu        ctermbg=5 ctermfg=0
	hi PmenuSel     ctermbg=0 ctermfg=8
	hi PmenuThumb   ctermbg=15
	hi Question     ctermfg=10
	hi Search       ctermbg=3 ctermfg=0
	hi SignColumn   ctermbg=8 ctermfg=6
	hi SpecialKey   ctermfg=12
	hi SpellBad     ctermbg=1
	hi SpellCap     ctermbg=4
	hi SpellLocal   ctermbg=6
	hi SpellRare    ctermbg=5
	hi TabLine      cterm=underline ctermfg=15 ctermbg=8
	hi Title        ctermfg=13
	hi Visual       ctermbg=8
	hi WarningMsg   ctermfg=9
	hi Comment      term=bold cterm=NONE ctermfg=6 ctermbg=NONE
	hi Constant     term=underline cterm=NONE ctermfg=5 ctermbg=NONE
	hi Special      term=bold cterm=NONE ctermfg=9 ctermbg=NONE
	hi Identifier   term=underline cterm=bold ctermfg=6 ctermbg=NONE
	hi Statement    term=bold cterm=NONE ctermfg=3 ctermbg=NONE
	hi PreProc      term=underline cterm=NONE ctermfg=12 ctermbg=NONE
	hi Type         term=underline cterm=NONE ctermfg=10 ctermbg=NONE
	hi Underlined   term=underline cterm=underline ctermfg=12
	hi Ignore       term=NONE cterm=NONE ctermfg=0 ctermbg=NONE
endif

hi NvimInternalError ctermfg=1 ctermbg=1
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
" minimize the 1 area.
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
"   { "Alice4", RGB_(0xf0, 0xf8, 0xff) },
"   { "Antique15", RGB_(0xfa, 0xeb, 0xd7) },
"   { "Antique151", RGB_(0xff, 0xef, 0xdb) },
"   { "Antique152", RGB_(0xee, 0xdf, 0xcc) },
"   { "Antique153", RGB_(0xcd, 0xc0, 0xb0) },
"   { "Antique154", RGB_(0x8b, 0x83, 0x78) },
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
"   { "0", RGB_(0x00, 0x00, 0x00) },
"   { "BlanchedAlmond", RGB_(0xff, 0xeb, 0xcd) },
"   { "4", RGB_(0x00, 0x00, 0xff) },
"   { "41", RGB_(0x0, 0x0, 0xff) },
"   { "42", RGB_(0x0, 0x0, 0xee) },
"   { "43", RGB_(0x0, 0x0, 0xcd) },
"   { "44", RGB_(0x0, 0x0, 0x8b) },
"   { "4Violet", RGB_(0x8a, 0x2b, 0xe2) },
"   { "3", RGB_(0xa5, 0x2a, 0x2a) },
"   { "31", RGB_(0xff, 0x40, 0x40) },
"   { "32", RGB_(0xee, 0x3b, 0x3b) },
"   { "33", RGB_(0xcd, 0x33, 0x33) },
"   { "34", RGB_(0x8b, 0x23, 0x23) },
"   { "BurlyWood", RGB_(0xde, 0xb8, 0x87) },
"   { "Burlywood1", RGB_(0xff, 0xd3, 0x9b) },
"   { "Burlywood2", RGB_(0xee, 0xc5, 0x91) },
"   { "Burlywood3", RGB_(0xcd, 0xaa, 0x7d) },
"   { "Burlywood4", RGB_(0x8b, 0x73, 0x55) },
"   { "Cadet4", RGB_(0x5f, 0x9e, 0xa0) },
"   { "Cadet41", RGB_(0x98, 0xf5, 0xff) },
"   { "Cadet42", RGB_(0x8e, 0xe5, 0xee) },
"   { "Cadet43", RGB_(0x7a, 0xc5, 0xcd) },
"   { "Cadet44", RGB_(0x53, 0x86, 0x8b) },
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
"   { "CornFlower4", RGB_(0x64, 0x95, 0xed) },
"   { "Cornsilk", RGB_(0xff, 0xf8, 0xdc) },
"   { "Cornsilk1", RGB_(0xff, 0xf8, 0xdc) },
"   { "Cornsilk2", RGB_(0xee, 0xe8, 0xcd) },
"   { "Cornsilk3", RGB_(0xcd, 0xc8, 0xb1) },
"   { "Cornsilk4", RGB_(0x8b, 0x88, 0x78) },
"   { "Crimson", RGB_(0xdc, 0x14, 0x3c) },
"   { "6", RGB_(0x00, 0xff, 0xff) },
"   { "61", RGB_(0x0, 0xff, 0xff) },
"   { "62", RGB_(0x0, 0xee, 0xee) },
"   { "63", RGB_(0x0, 0xcd, 0xcd) },
"   { "64", RGB_(0x0, 0x8b, 0x8b) },
"   { "4", RGB_(0x00, 0x00, 0x8b) },
"   { "6", RGB_(0x00, 0x8b, 0x8b) },
"   { "DarkGoldenRod", RGB_(0xb8, 0x86, 0x0b) },
"   { "DarkGoldenrod1", RGB_(0xff, 0xb9, 0xf) },
"   { "DarkGoldenrod2", RGB_(0xee, 0xad, 0xe) },
"   { "DarkGoldenrod3", RGB_(0xcd, 0x95, 0xc) },
"   { "DarkGoldenrod4", RGB_(0x8b, 0x65, 0x8) },
"   { "8", RGB_(0xa9, 0xa9, 0xa9) },
"   { "2", RGB_(0x00, 0x64, 0x00) },
"   { "8", RGB_(0xa9, 0xa9, 0xa9) },
"   { "DarkKhaki", RGB_(0xbd, 0xb7, 0x6b) },
"   { "5", RGB_(0x8b, 0x00, 0x8b) },
"   { "DarkOlive2", RGB_(0x55, 0x6b, 0x2f) },
"   { "DarkOlive21", RGB_(0xca, 0xff, 0x70) },
"   { "DarkOlive22", RGB_(0xbc, 0xee, 0x68) },
"   { "DarkOlive23", RGB_(0xa2, 0xcd, 0x5a) },
"   { "DarkOlive24", RGB_(0x6e, 0x8b, 0x3d) },
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
"   { "1", RGB_(0x8b, 0x00, 0x00) },
"   { "DarkSalmon", RGB_(0xe9, 0x96, 0x7a) },
"   { "DarkSea2", RGB_(0x8f, 0xbc, 0x8f) },
"   { "DarkSea21", RGB_(0xc1, 0xff, 0xc1) },
"   { "DarkSea22", RGB_(0xb4, 0xee, 0xb4) },
"   { "DarkSea23", RGB_(0x9b, 0xcd, 0x9b) },
"   { "DarkSea24", RGB_(0x69, 0x8b, 0x69) },
"   { "DarkSlate4", RGB_(0x48, 0x3d, 0x8b) },
"   { "DarkSlate7", RGB_(0x2f, 0x4f, 0x4f) },
"   { "DarkSlate71", RGB_(0x97, 0xff, 0xff) },
"   { "DarkSlate72", RGB_(0x8d, 0xee, 0xee) },
"   { "DarkSlate73", RGB_(0x79, 0xcd, 0xcd) },
"   { "DarkSlate74", RGB_(0x52, 0x8b, 0x8b) },
"   { "DarkSlate7", RGB_(0x2f, 0x4f, 0x4f) },
"   { "DarkTurquoise", RGB_(0x00, 0xce, 0xd1) },
"   { "DarkViolet", RGB_(0x94, 0x00, 0xd3) },
"   { "3", RGB_(0xbb, 0xbb, 0x00) },
"   { "DeepPink", RGB_(0xff, 0x14, 0x93) },
"   { "DeepPink1", RGB_(0xff, 0x14, 0x93) },
"   { "DeepPink2", RGB_(0xee, 0x12, 0x89) },
"   { "DeepPink3", RGB_(0xcd, 0x10, 0x76) },
"   { "DeepPink4", RGB_(0x8b, 0xa, 0x50) },
"   { "DeepSky4", RGB_(0x00, 0xbf, 0xff) },
"   { "DeepSky41", RGB_(0x0, 0xbf, 0xff) },
"   { "DeepSky42", RGB_(0x0, 0xb2, 0xee) },
"   { "DeepSky43", RGB_(0x0, 0x9a, 0xcd) },
"   { "DeepSky44", RGB_(0x0, 0x68, 0x8b) },
"   { "Dim7", RGB_(0x69, 0x69, 0x69) },
"   { "Dim7", RGB_(0x69, 0x69, 0x69) },
"   { "Dodger4", RGB_(0x1e, 0x90, 0xff) },
"   { "Dodger41", RGB_(0x1e, 0x90, 0xff) },
"   { "Dodger42", RGB_(0x1c, 0x86, 0xee) },
"   { "Dodger43", RGB_(0x18, 0x74, 0xcd) },
"   { "Dodger44", RGB_(0x10, 0x4e, 0x8b) },
"   { "Firebrick", RGB_(0xb2, 0x22, 0x22) },
"   { "Firebrick1", RGB_(0xff, 0x30, 0x30) },
"   { "Firebrick2", RGB_(0xee, 0x2c, 0x2c) },
"   { "Firebrick3", RGB_(0xcd, 0x26, 0x26) },
"   { "Firebrick4", RGB_(0x8b, 0x1a, 0x1a) },
"   { "Floral15", RGB_(0xff, 0xfa, 0xf0) },
"   { "Forest2", RGB_(0x22, 0x8b, 0x22) },
"   { "Fuchsia", RGB_(0xff, 0x00, 0xff) },
"   { "Gainsboro", RGB_(0xdc, 0xdc, 0xdc) },
"   { "Ghost15", RGB_(0xf8, 0xf8, 0xff) },
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
"   { "7", RGB_(0x80, 0x80, 0x80) },
"   { "70", RGB_(0x0, 0x0, 0x0) },
"   { "71", RGB_(0x3, 0x3, 0x3) },
"   { "710", RGB_(0x1a, 0x1a, 0x1a) },
"   { "7100", RGB_(0xff, 0xff, 0xff) },
"   { "711", RGB_(0x1c, 0x1c, 0x1c) },
"   { "712", RGB_(0x1f, 0x1f, 0x1f) },
"   { "713", RGB_(0x21, 0x21, 0x21) },
"   { "714", RGB_(0x24, 0x24, 0x24) },
"   { "715", RGB_(0x26, 0x26, 0x26) },
"   { "716", RGB_(0x29, 0x29, 0x29) },
"   { "717", RGB_(0x2b, 0x2b, 0x2b) },
"   { "718", RGB_(0x2e, 0x2e, 0x2e) },
"   { "719", RGB_(0x30, 0x30, 0x30) },
"   { "72", RGB_(0x5, 0x5, 0x5) },
"   { "720", RGB_(0x33, 0x33, 0x33) },
"   { "721", RGB_(0x36, 0x36, 0x36) },
"   { "722", RGB_(0x38, 0x38, 0x38) },
"   { "723", RGB_(0x3b, 0x3b, 0x3b) },
"   { "724", RGB_(0x3d, 0x3d, 0x3d) },
"   { "725", RGB_(0x40, 0x40, 0x40) },
"   { "726", RGB_(0x42, 0x42, 0x42) },
"   { "727", RGB_(0x45, 0x45, 0x45) },
"   { "728", RGB_(0x47, 0x47, 0x47) },
"   { "729", RGB_(0x4a, 0x4a, 0x4a) },
"   { "73", RGB_(0x8, 0x8, 0x8) },
"   { "730", RGB_(0x4d, 0x4d, 0x4d) },
"   { "731", RGB_(0x4f, 0x4f, 0x4f) },
"   { "732", RGB_(0x52, 0x52, 0x52) },
"   { "733", RGB_(0x54, 0x54, 0x54) },
"   { "734", RGB_(0x57, 0x57, 0x57) },
"   { "735", RGB_(0x59, 0x59, 0x59) },
"   { "736", RGB_(0x5c, 0x5c, 0x5c) },
"   { "737", RGB_(0x5e, 0x5e, 0x5e) },
"   { "738", RGB_(0x61, 0x61, 0x61) },
"   { "739", RGB_(0x63, 0x63, 0x63) },
"   { "74", RGB_(0xa, 0xa, 0xa) },
"   { "740", RGB_(0x66, 0x66, 0x66) },
"   { "741", RGB_(0x69, 0x69, 0x69) },
"   { "742", RGB_(0x6b, 0x6b, 0x6b) },
"   { "743", RGB_(0x6e, 0x6e, 0x6e) },
"   { "744", RGB_(0x70, 0x70, 0x70) },
"   { "745", RGB_(0x73, 0x73, 0x73) },
"   { "746", RGB_(0x75, 0x75, 0x75) },
"   { "747", RGB_(0x78, 0x78, 0x78) },
"   { "748", RGB_(0x7a, 0x7a, 0x7a) },
"   { "749", RGB_(0x7d, 0x7d, 0x7d) },
"   { "75", RGB_(0xd, 0xd, 0xd) },
"   { "750", RGB_(0x7f, 0x7f, 0x7f) },
"   { "751", RGB_(0x82, 0x82, 0x82) },
"   { "752", RGB_(0x85, 0x85, 0x85) },
"   { "753", RGB_(0x87, 0x87, 0x87) },
"   { "754", RGB_(0x8a, 0x8a, 0x8a) },
"   { "755", RGB_(0x8c, 0x8c, 0x8c) },
"   { "756", RGB_(0x8f, 0x8f, 0x8f) },
"   { "757", RGB_(0x91, 0x91, 0x91) },
"   { "758", RGB_(0x94, 0x94, 0x94) },
"   { "759", RGB_(0x96, 0x96, 0x96) },
"   { "76", RGB_(0xf, 0xf, 0xf) },
"   { "760", RGB_(0x99, 0x99, 0x99) },
"   { "761", RGB_(0x9c, 0x9c, 0x9c) },
"   { "762", RGB_(0x9e, 0x9e, 0x9e) },
"   { "763", RGB_(0xa1, 0xa1, 0xa1) },
"   { "764", RGB_(0xa3, 0xa3, 0xa3) },
"   { "765", RGB_(0xa6, 0xa6, 0xa6) },
"   { "766", RGB_(0xa8, 0xa8, 0xa8) },
"   { "767", RGB_(0xab, 0xab, 0xab) },
"   { "768", RGB_(0xad, 0xad, 0xad) },
"   { "769", RGB_(0xb0, 0xb0, 0xb0) },
"   { "77", RGB_(0x12, 0x12, 0x12) },
"   { "770", RGB_(0xb3, 0xb3, 0xb3) },
"   { "771", RGB_(0xb5, 0xb5, 0xb5) },
"   { "772", RGB_(0xb8, 0xb8, 0xb8) },
"   { "773", RGB_(0xba, 0xba, 0xba) },
"   { "774", RGB_(0xbd, 0xbd, 0xbd) },
"   { "775", RGB_(0xbf, 0xbf, 0xbf) },
"   { "776", RGB_(0xc2, 0xc2, 0xc2) },
"   { "777", RGB_(0xc4, 0xc4, 0xc4) },
"   { "778", RGB_(0xc7, 0xc7, 0xc7) },
"   { "779", RGB_(0xc9, 0xc9, 0xc9) },
"   { "78", RGB_(0x14, 0x14, 0x14) },
"   { "780", RGB_(0xcc, 0xcc, 0xcc) },
"   { "781", RGB_(0xcf, 0xcf, 0xcf) },
"   { "782", RGB_(0xd1, 0xd1, 0xd1) },
"   { "783", RGB_(0xd4, 0xd4, 0xd4) },
"   { "784", RGB_(0xd6, 0xd6, 0xd6) },
"   { "785", RGB_(0xd9, 0xd9, 0xd9) },
"   { "786", RGB_(0xdb, 0xdb, 0xdb) },
"   { "787", RGB_(0xde, 0xde, 0xde) },
"   { "788", RGB_(0xe0, 0xe0, 0xe0) },
"   { "789", RGB_(0xe3, 0xe3, 0xe3) },
"   { "79", RGB_(0x17, 0x17, 0x17) },
"   { "790", RGB_(0xe5, 0xe5, 0xe5) },
"   { "791", RGB_(0xe8, 0xe8, 0xe8) },
"   { "792", RGB_(0xeb, 0xeb, 0xeb) },
"   { "793", RGB_(0xed, 0xed, 0xed) },
"   { "794", RGB_(0xf0, 0xf0, 0xf0) },
"   { "795", RGB_(0xf2, 0xf2, 0xf2) },
"   { "796", RGB_(0xf5, 0xf5, 0xf5) },
"   { "797", RGB_(0xf7, 0xf7, 0xf7) },
"   { "798", RGB_(0xfa, 0xfa, 0xfa) },
"   { "799", RGB_(0xfc, 0xfc, 0xfc) },
"   { "2", RGB_(0x00, 0x80, 0x00) },
"   { "21", RGB_(0x0, 0xff, 0x0) },
"   { "22", RGB_(0x0, 0xee, 0x0) },
"   { "23", RGB_(0x0, 0xcd, 0x0) },
"   { "24", RGB_(0x0, 0x8b, 0x0) },
"   { "23", RGB_(0xad, 0xff, 0x2f) },
"   { "7", RGB_(0x80, 0x80, 0x80) },
"   { "70", RGB_(0x0, 0x0, 0x0) },
"   { "71", RGB_(0x3, 0x3, 0x3) },
"   { "710", RGB_(0x1a, 0x1a, 0x1a) },
"   { "7100", RGB_(0xff, 0xff, 0xff) },
"   { "711", RGB_(0x1c, 0x1c, 0x1c) },
"   { "712", RGB_(0x1f, 0x1f, 0x1f) },
"   { "713", RGB_(0x21, 0x21, 0x21) },
"   { "714", RGB_(0x24, 0x24, 0x24) },
"   { "715", RGB_(0x26, 0x26, 0x26) },
"   { "716", RGB_(0x29, 0x29, 0x29) },
"   { "717", RGB_(0x2b, 0x2b, 0x2b) },
"   { "718", RGB_(0x2e, 0x2e, 0x2e) },
"   { "719", RGB_(0x30, 0x30, 0x30) },
"   { "72", RGB_(0x5, 0x5, 0x5) },
"   { "720", RGB_(0x33, 0x33, 0x33) },
"   { "721", RGB_(0x36, 0x36, 0x36) },
"   { "722", RGB_(0x38, 0x38, 0x38) },
"   { "723", RGB_(0x3b, 0x3b, 0x3b) },
"   { "724", RGB_(0x3d, 0x3d, 0x3d) },
"   { "725", RGB_(0x40, 0x40, 0x40) },
"   { "726", RGB_(0x42, 0x42, 0x42) },
"   { "727", RGB_(0x45, 0x45, 0x45) },
"   { "728", RGB_(0x47, 0x47, 0x47) },
"   { "729", RGB_(0x4a, 0x4a, 0x4a) },
"   { "73", RGB_(0x8, 0x8, 0x8) },
"   { "730", RGB_(0x4d, 0x4d, 0x4d) },
"   { "731", RGB_(0x4f, 0x4f, 0x4f) },
"   { "732", RGB_(0x52, 0x52, 0x52) },
"   { "733", RGB_(0x54, 0x54, 0x54) },
"   { "734", RGB_(0x57, 0x57, 0x57) },
"   { "735", RGB_(0x59, 0x59, 0x59) },
"   { "736", RGB_(0x5c, 0x5c, 0x5c) },
"   { "737", RGB_(0x5e, 0x5e, 0x5e) },
"   { "738", RGB_(0x61, 0x61, 0x61) },
"   { "739", RGB_(0x63, 0x63, 0x63) },
"   { "74", RGB_(0xa, 0xa, 0xa) },
"   { "740", RGB_(0x66, 0x66, 0x66) },
"   { "741", RGB_(0x69, 0x69, 0x69) },
"   { "742", RGB_(0x6b, 0x6b, 0x6b) },
"   { "743", RGB_(0x6e, 0x6e, 0x6e) },
"   { "744", RGB_(0x70, 0x70, 0x70) },
"   { "745", RGB_(0x73, 0x73, 0x73) },
"   { "746", RGB_(0x75, 0x75, 0x75) },
"   { "747", RGB_(0x78, 0x78, 0x78) },
"   { "748", RGB_(0x7a, 0x7a, 0x7a) },
"   { "749", RGB_(0x7d, 0x7d, 0x7d) },
"   { "75", RGB_(0xd, 0xd, 0xd) },
"   { "750", RGB_(0x7f, 0x7f, 0x7f) },
"   { "751", RGB_(0x82, 0x82, 0x82) },
"   { "752", RGB_(0x85, 0x85, 0x85) },
"   { "753", RGB_(0x87, 0x87, 0x87) },
"   { "754", RGB_(0x8a, 0x8a, 0x8a) },
"   { "755", RGB_(0x8c, 0x8c, 0x8c) },
"   { "756", RGB_(0x8f, 0x8f, 0x8f) },
"   { "757", RGB_(0x91, 0x91, 0x91) },
"   { "758", RGB_(0x94, 0x94, 0x94) },
"   { "759", RGB_(0x96, 0x96, 0x96) },
"   { "76", RGB_(0xf, 0xf, 0xf) },
"   { "760", RGB_(0x99, 0x99, 0x99) },
"   { "761", RGB_(0x9c, 0x9c, 0x9c) },
"   { "762", RGB_(0x9e, 0x9e, 0x9e) },
"   { "763", RGB_(0xa1, 0xa1, 0xa1) },
"   { "764", RGB_(0xa3, 0xa3, 0xa3) },
"   { "765", RGB_(0xa6, 0xa6, 0xa6) },
"   { "766", RGB_(0xa8, 0xa8, 0xa8) },
"   { "767", RGB_(0xab, 0xab, 0xab) },
"   { "768", RGB_(0xad, 0xad, 0xad) },
"   { "769", RGB_(0xb0, 0xb0, 0xb0) },
"   { "77", RGB_(0x12, 0x12, 0x12) },
"   { "770", RGB_(0xb3, 0xb3, 0xb3) },
"   { "771", RGB_(0xb5, 0xb5, 0xb5) },
"   { "772", RGB_(0xb8, 0xb8, 0xb8) },
"   { "773", RGB_(0xba, 0xba, 0xba) },
"   { "774", RGB_(0xbd, 0xbd, 0xbd) },
"   { "775", RGB_(0xbf, 0xbf, 0xbf) },
"   { "776", RGB_(0xc2, 0xc2, 0xc2) },
"   { "777", RGB_(0xc4, 0xc4, 0xc4) },
"   { "778", RGB_(0xc7, 0xc7, 0xc7) },
"   { "779", RGB_(0xc9, 0xc9, 0xc9) },
"   { "78", RGB_(0x14, 0x14, 0x14) },
"   { "780", RGB_(0xcc, 0xcc, 0xcc) },
"   { "781", RGB_(0xcf, 0xcf, 0xcf) },
"   { "782", RGB_(0xd1, 0xd1, 0xd1) },
"   { "783", RGB_(0xd4, 0xd4, 0xd4) },
"   { "784", RGB_(0xd6, 0xd6, 0xd6) },
"   { "785", RGB_(0xd9, 0xd9, 0xd9) },
"   { "786", RGB_(0xdb, 0xdb, 0xdb) },
"   { "787", RGB_(0xde, 0xde, 0xde) },
"   { "788", RGB_(0xe0, 0xe0, 0xe0) },
"   { "789", RGB_(0xe3, 0xe3, 0xe3) },
"   { "79", RGB_(0x17, 0x17, 0x17) },
"   { "790", RGB_(0xe5, 0xe5, 0xe5) },
"   { "791", RGB_(0xe8, 0xe8, 0xe8) },
"   { "792", RGB_(0xeb, 0xeb, 0xeb) },
"   { "793", RGB_(0xed, 0xed, 0xed) },
"   { "794", RGB_(0xf0, 0xf0, 0xf0) },
"   { "795", RGB_(0xf2, 0xf2, 0xf2) },
"   { "796", RGB_(0xf5, 0xf5, 0xf5) },
"   { "797", RGB_(0xf7, 0xf7, 0xf7) },
"   { "798", RGB_(0xfa, 0xfa, 0xfa) },
"   { "799", RGB_(0xfc, 0xfc, 0xfc) },
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
"   { "Indian1", RGB_(0xcd, 0x5c, 0x5c) },
"   { "Indian11", RGB_(0xff, 0x6a, 0x6a) },
"   { "Indian12", RGB_(0xee, 0x63, 0x63) },
"   { "Indian13", RGB_(0xcd, 0x55, 0x55) },
"   { "Indian14", RGB_(0x8b, 0x3a, 0x3a) },
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
"   { "Lawn2", RGB_(0x7c, 0xfc, 0x00) },
"   { "LemonChiffon", RGB_(0xff, 0xfa, 0xcd) },
"   { "LemonChiffon1", RGB_(0xff, 0xfa, 0xcd) },
"   { "LemonChiffon2", RGB_(0xee, 0xe9, 0xbf) },
"   { "LemonChiffon3", RGB_(0xcd, 0xc9, 0xa5) },
"   { "LemonChiffon4", RGB_(0x8b, 0x89, 0x70) },
"   { "12", RGB_(0xad, 0xd8, 0xe6) },
"   { "121", RGB_(0xbf, 0xef, 0xff) },
"   { "122", RGB_(0xb2, 0xdf, 0xee) },
"   { "123", RGB_(0x9a, 0xc0, 0xcd) },
"   { "124", RGB_(0x68, 0x83, 0x8b) },
"   { "LightCoral", RGB_(0xf0, 0x80, 0x80) },
"   { "14", RGB_(0xe0, 0xff, 0xff) },
"   { "141", RGB_(0xe0, 0xff, 0xff) },
"   { "142", RGB_(0xd1, 0xee, 0xee) },
"   { "143", RGB_(0xb4, 0xcd, 0xcd) },
"   { "144", RGB_(0x7a, 0x8b, 0x8b) },
"   { "LightGoldenrod", RGB_(0xee, 0xdd, 0x82) },
"   { "LightGoldenrod1", RGB_(0xff, 0xec, 0x8b) },
"   { "LightGoldenrod2", RGB_(0xee, 0xdc, 0x82) },
"   { "LightGoldenrod3", RGB_(0xcd, 0xbe, 0x70) },
"   { "LightGoldenrod4", RGB_(0x8b, 0x81, 0x4c) },
"   { "LightGoldenRod3", RGB_(0xfa, 0xfa, 0xd2) },
"   { "7", RGB_(0xd3, 0xd3, 0xd3) },
"   { "10", RGB_(0x90, 0xee, 0x90) },
"   { "7", RGB_(0xd3, 0xd3, 0xd3) },
"   { "13", RGB_(0xff, 0xbb, 0xff) },
"   { "LightPink", RGB_(0xff, 0xb6, 0xc1) },
"   { "LightPink1", RGB_(0xff, 0xae, 0xb9) },
"   { "LightPink2", RGB_(0xee, 0xa2, 0xad) },
"   { "LightPink3", RGB_(0xcd, 0x8c, 0x95) },
"   { "LightPink4", RGB_(0x8b, 0x5f, 0x65) },
"   { "9", RGB_(0xff, 0xbb, 0xbb) },
"   { "LightSalmon", RGB_(0xff, 0xa0, 0x7a) },
"   { "LightSalmon1", RGB_(0xff, 0xa0, 0x7a) },
"   { "LightSalmon2", RGB_(0xee, 0x95, 0x72) },
"   { "LightSalmon3", RGB_(0xcd, 0x81, 0x62) },
"   { "LightSalmon4", RGB_(0x8b, 0x57, 0x42) },
"   { "LightSea2", RGB_(0x20, 0xb2, 0xaa) },
"   { "LightSky4", RGB_(0x87, 0xce, 0xfa) },
"   { "LightSky41", RGB_(0xb0, 0xe2, 0xff) },
"   { "LightSky42", RGB_(0xa4, 0xd3, 0xee) },
"   { "LightSky43", RGB_(0x8d, 0xb6, 0xcd) },
"   { "LightSky44", RGB_(0x60, 0x7b, 0x8b) },
"   { "LightSlate4", RGB_(0x84, 0x70, 0xff) },
"   { "LightSlate7", RGB_(0x77, 0x88, 0x99) },
"   { "LightSlate7", RGB_(0x77, 0x88, 0x99) },
"   { "LightSteel4", RGB_(0xb0, 0xc4, 0xde) },
"   { "LightSteel41", RGB_(0xca, 0xe1, 0xff) },
"   { "LightSteel42", RGB_(0xbc, 0xd2, 0xee) },
"   { "LightSteel43", RGB_(0xa2, 0xb5, 0xcd) },
"   { "LightSteel44", RGB_(0x6e, 0x7b, 0x8b) },
"   { "11", RGB_(0xff, 0xff, 0xe0) },
"   { "111", RGB_(0xff, 0xff, 0xe0) },
"   { "112", RGB_(0xee, 0xee, 0xd1) },
"   { "113", RGB_(0xcd, 0xcd, 0xb4) },
"   { "114", RGB_(0x8b, 0x8b, 0x7a) },
"   { "Lime", RGB_(0x00, 0xff, 0x00) },
"   { "Lime2", RGB_(0x32, 0xcd, 0x32) },
"   { "Linen", RGB_(0xfa, 0xf0, 0xe6) },
"   { "5", RGB_(0xff, 0x00, 0xff) },
"   { "51", RGB_(0xff, 0x0, 0xff) },
"   { "52", RGB_(0xee, 0x0, 0xee) },
"   { "53", RGB_(0xcd, 0x0, 0xcd) },
"   { "54", RGB_(0x8b, 0x0, 0x8b) },
"   { "Maroon", RGB_(0x80, 0x00, 0x00) },
"   { "Maroon1", RGB_(0xff, 0x34, 0xb3) },
"   { "Maroon2", RGB_(0xee, 0x30, 0xa7) },
"   { "Maroon3", RGB_(0xcd, 0x29, 0x90) },
"   { "Maroon4", RGB_(0x8b, 0x1c, 0x62) },
"   { "MediumAquamarine", RGB_(0x66, 0xcd, 0xaa) },
"   { "Medium4", RGB_(0x00, 0x00, 0xcd) },
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
"   { "MediumSea2", RGB_(0x3c, 0xb3, 0x71) },
"   { "MediumSlate4", RGB_(0x7b, 0x68, 0xee) },
"   { "MediumSpring2", RGB_(0x00, 0xfa, 0x9a) },
"   { "MediumTurquoise", RGB_(0x48, 0xd1, 0xcc) },
"   { "MediumViolet1", RGB_(0xc7, 0x15, 0x85) },
"   { "Midnight4", RGB_(0x19, 0x19, 0x70) },
"   { "MintCream", RGB_(0xf5, 0xff, 0xfa) },
"   { "MistyRose", RGB_(0xff, 0xe4, 0xe1) },
"   { "MistyRose1", RGB_(0xff, 0xe4, 0xe1) },
"   { "MistyRose2", RGB_(0xee, 0xd5, 0xd2) },
"   { "MistyRose3", RGB_(0xcd, 0xb7, 0xb5) },
"   { "MistyRose4", RGB_(0x8b, 0x7d, 0x7b) },
"   { "Moccasin", RGB_(0xff, 0xe4, 0xb5) },
"   { "Navajo15", RGB_(0xff, 0xde, 0xad) },
"   { "Navajo151", RGB_(0xff, 0xde, 0xad) },
"   { "Navajo152", RGB_(0xee, 0xcf, 0xa1) },
"   { "Navajo153", RGB_(0xcd, 0xb3, 0x8b) },
"   { "Navajo154", RGB_(0x8b, 0x79, 0x5e) },
"   { "Navy", RGB_(0x00, 0x00, 0x80) },
"   { "Navy4", RGB_(0x0, 0x0, 0x80) },
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
"   { "Orange1", RGB_(0xff, 0x45, 0x00) },
"   { "Orange11", RGB_(0xff, 0x45, 0x0) },
"   { "Orange12", RGB_(0xee, 0x40, 0x0) },
"   { "Orange13", RGB_(0xcd, 0x37, 0x0) },
"   { "Orange14", RGB_(0x8b, 0x25, 0x0) },
"   { "Orchid", RGB_(0xda, 0x70, 0xd6) },
"   { "Orchid1", RGB_(0xff, 0x83, 0xfa) },
"   { "Orchid2", RGB_(0xee, 0x7a, 0xe9) },
"   { "Orchid3", RGB_(0xcd, 0x69, 0xc9) },
"   { "Orchid4", RGB_(0x8b, 0x47, 0x89) },
"   { "PaleGoldenRod", RGB_(0xee, 0xe8, 0xaa) },
"   { "Pale2", RGB_(0x98, 0xfb, 0x98) },
"   { "Pale21", RGB_(0x9a, 0xff, 0x9a) },
"   { "Pale22", RGB_(0x90, 0xee, 0x90) },
"   { "Pale23", RGB_(0x7c, 0xcd, 0x7c) },
"   { "Pale24", RGB_(0x54, 0x8b, 0x54) },
"   { "PaleTurquoise", RGB_(0xaf, 0xee, 0xee) },
"   { "PaleTurquoise1", RGB_(0xbb, 0xff, 0xff) },
"   { "PaleTurquoise2", RGB_(0xae, 0xee, 0xee) },
"   { "PaleTurquoise3", RGB_(0x96, 0xcd, 0xcd) },
"   { "PaleTurquoise4", RGB_(0x66, 0x8b, 0x8b) },
"   { "PaleViolet1", RGB_(0xdb, 0x70, 0x93) },
"   { "PaleViolet11", RGB_(0xff, 0x82, 0xab) },
"   { "PaleViolet12", RGB_(0xee, 0x79, 0x9f) },
"   { "PaleViolet13", RGB_(0xcd, 0x68, 0x89) },
"   { "PaleViolet14", RGB_(0x8b, 0x47, 0x5d) },
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
"   { "Powder4", RGB_(0xb0, 0xe0, 0xe6) },
"   { "Purple", RGB_(0x80, 0x00, 0x80) },
"   { "Purple1", RGB_(0x9b, 0x30, 0xff) },
"   { "Purple2", RGB_(0x91, 0x2c, 0xee) },
"   { "Purple3", RGB_(0x7d, 0x26, 0xcd) },
"   { "Purple4", RGB_(0x55, 0x1a, 0x8b) },
"   { "RebeccaPurple", RGB_(0x66, 0x33, 0x99) },
"   { "1", RGB_(0xff, 0x00, 0x00) },
"   { "11", RGB_(0xff, 0x0, 0x0) },
"   { "12", RGB_(0xee, 0x0, 0x0) },
"   { "13", RGB_(0xcd, 0x0, 0x0) },
"   { "14", RGB_(0x8b, 0x0, 0x0) },
"   { "Rosy3", RGB_(0xbc, 0x8f, 0x8f) },
"   { "Rosy31", RGB_(0xff, 0xc1, 0xc1) },
"   { "Rosy32", RGB_(0xee, 0xb4, 0xb4) },
"   { "Rosy33", RGB_(0xcd, 0x9b, 0x9b) },
"   { "Rosy34", RGB_(0x8b, 0x69, 0x69) },
"   { "Royal4", RGB_(0x41, 0x69, 0xe1) },
"   { "Royal41", RGB_(0x48, 0x76, 0xff) },
"   { "Royal42", RGB_(0x43, 0x6e, 0xee) },
"   { "Royal43", RGB_(0x3a, 0x5f, 0xcd) },
"   { "Royal44", RGB_(0x27, 0x40, 0x8b) },
"   { "Saddle3", RGB_(0x8b, 0x45, 0x13) },
"   { "Salmon", RGB_(0xfa, 0x80, 0x72) },
"   { "Salmon1", RGB_(0xff, 0x8c, 0x69) },
"   { "Salmon2", RGB_(0xee, 0x82, 0x62) },
"   { "Salmon3", RGB_(0xcd, 0x70, 0x54) },
"   { "Salmon4", RGB_(0x8b, 0x4c, 0x39) },
"   { "Sandy3", RGB_(0xf4, 0xa4, 0x60) },
"   { "Sea2", RGB_(0x2e, 0x8b, 0x57) },
"   { "Sea21", RGB_(0x54, 0xff, 0x9f) },
"   { "Sea22", RGB_(0x4e, 0xee, 0x94) },
"   { "Sea23", RGB_(0x43, 0xcd, 0x80) },
"   { "Sea24", RGB_(0x2e, 0x8b, 0x57) },
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
"   { "Sky4", RGB_(0x87, 0xce, 0xeb) },
"   { "Sky41", RGB_(0x87, 0xce, 0xff) },
"   { "Sky42", RGB_(0x7e, 0xc0, 0xee) },
"   { "Sky43", RGB_(0x6c, 0xa6, 0xcd) },
"   { "Sky44", RGB_(0x4a, 0x70, 0x8b) },
"   { "Slate4", RGB_(0x6a, 0x5a, 0xcd) },
"   { "Slate41", RGB_(0x83, 0x6f, 0xff) },
"   { "Slate42", RGB_(0x7a, 0x67, 0xee) },
"   { "Slate43", RGB_(0x69, 0x59, 0xcd) },
"   { "Slate44", RGB_(0x47, 0x3c, 0x8b) },
"   { "Slate7", RGB_(0x70, 0x80, 0x90) },
"   { "Slate71", RGB_(0xc6, 0xe2, 0xff) },
"   { "Slate72", RGB_(0xb9, 0xd3, 0xee) },
"   { "Slate73", RGB_(0x9f, 0xb6, 0xcd) },
"   { "Slate74", RGB_(0x6c, 0x7b, 0x8b) },
"   { "Slate7", RGB_(0x70, 0x80, 0x90) },
"   { "Snow", RGB_(0xff, 0xfa, 0xfa) },
"   { "Snow1", RGB_(0xff, 0xfa, 0xfa) },
"   { "Snow2", RGB_(0xee, 0xe9, 0xe9) },
"   { "Snow3", RGB_(0xcd, 0xc9, 0xc9) },
"   { "Snow4", RGB_(0x8b, 0x89, 0x89) },
"   { "Spring2", RGB_(0x00, 0xff, 0x7f) },
"   { "Spring21", RGB_(0x0, 0xff, 0x7f) },
"   { "Spring22", RGB_(0x0, 0xee, 0x76) },
"   { "Spring23", RGB_(0x0, 0xcd, 0x66) },
"   { "Spring24", RGB_(0x0, 0x8b, 0x45) },
"   { "Steel4", RGB_(0x46, 0x82, 0xb4) },
"   { "Steel41", RGB_(0x63, 0xb8, 0xff) },
"   { "Steel42", RGB_(0x5c, 0xac, 0xee) },
"   { "Steel43", RGB_(0x4f, 0x94, 0xcd) },
"   { "Steel44", RGB_(0x36, 0x64, 0x8b) },
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
"   { "Violet1", RGB_(0xd0, 0x20, 0x90) },
"   { "Violet11", RGB_(0xff, 0x3e, 0x96) },
"   { "Violet12", RGB_(0xee, 0x3a, 0x8c) },
"   { "Violet13", RGB_(0xcd, 0x32, 0x78) },
"   { "Violet14", RGB_(0x8b, 0x22, 0x52) },
"   { "Web7", RGB_(0x80, 0x80, 0x80) },
"   { "Web2", RGB_(0x0, 0x80, 0x0) },
"   { "Web7", RGB_(0x80, 0x80, 0x80) },
"   { "WebMaroon", RGB_(0x80, 0x0, 0x0) },
"   { "WebPurple", RGB_(0x80, 0x0, 0x80) },
"   { "Wheat", RGB_(0xf5, 0xde, 0xb3) },
"   { "Wheat1", RGB_(0xff, 0xe7, 0xba) },
"   { "Wheat2", RGB_(0xee, 0xd8, 0xae) },
"   { "Wheat3", RGB_(0xcd, 0xba, 0x96) },
"   { "Wheat4", RGB_(0x8b, 0x7e, 0x66) },
"   { "15", RGB_(0xff, 0xff, 0xff) },
"   { "15Smoke", RGB_(0xf5, 0xf5, 0xf5) },
"   { "X117", RGB_(0xbe, 0xbe, 0xbe) },
"   { "X112", RGB_(0x0, 0xff, 0x0) },
"   { "X117", RGB_(0xbe, 0xbe, 0xbe) },
"   { "X11Maroon", RGB_(0xb0, 0x30, 0x60) },
"   { "X11Purple", RGB_(0xa0, 0x20, 0xf0) },
"   { "3", RGB_(0xff, 0xff, 0x00) },
"   { "31", RGB_(0xff, 0xff, 0x0) },
"   { "32", RGB_(0xee, 0xee, 0x0) },
"   { "33", RGB_(0xcd, 0xcd, 0x0) },
"   { "34", RGB_(0x8b, 0x8b, 0x0) },
"   { "32", RGB_(0x9a, 0xcd, 0x32) },
"   { NULL, 0 },
" };
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
" Clear all except some:

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
" hi link @constant.macro     NONE " hi default link @constant.macro Define
" hi link @define             NONE " hi default link @define Define
" hi link @macro              NONE " hi default link @macro Macro
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
" hi link @label        NONE " hi default link @label Label
hi link @operator     NONE " hi default link @operator Operator
hi link @keyword      NONE " hi default link @keyword Keyword
hi link @exception    NONE " hi default link @exception Exception

hi link @variable         NONE " hi default link @variable Identifier
hi link @type             NONE " hi default link @type Type
hi link @type.definition  NONE " hi default link @type.definition Typedef
hi link @storageclass     NONE " hi default link @storageclass StorageClass
hi link @namespace        NONE " hi default link @namespace Identifier
" hi link @include          NONE " hi default link @include Include
" hi link @preproc          NONE " hi default link @preproc PreProc
" hi link @debug            NONE " hi default link @debug Debug
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Custom:

hi @error ctermfg=1
" hi @punctuation cterm=bold

" hi clear Comment
" hi Comment ctermfg=8
" hi clear String
" hi String ctermfg=7
