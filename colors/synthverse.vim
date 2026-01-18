""
" Colorscheme: Synthverse " License: MIT""

if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name="synthverse"

let Italic = ""
if exists('g:synthverse_italic')
  let Italic = "italic"
endif

if exists('g:synthverse_transparent')
  let bg = "NONE"
  let bg2 = "NONE"
  let bg3 = "NONE"
  let bg4 = "NONE"
else
  if exists('g:synthverse_darker')
    let bg =  "#1e1e2e"
    let bg2 = "#4e2d4d"
    let bg3 = "#1e1e2e"
    let bg4 = "#3e1d3d"
  else
    let bg =  "#1e1e2e"
    let bg2 = "#4e2d4d"
    let bg3 = "#1e1e2e"
    let bg4 = "#3e1d3d"
  end
end
let g:synthverse_italic = get(g:, 'synthverse_italic', 0)

let Bold = ""
if exists('g:synthverse_bold')
  let Bold = "bold"
endif

if &background != 'dark'
  set background=dark
endif

let g:synthverse_bold = get(g:, 'synthverse_bold', 0)
if has('nvim-0.8') == 1
  lua package.loaded['synthverse'] = nil
  " packadd synthverse
  lua require('synthverse').colorscheme()
else
  hi link SignifySignAdd GitGutterAdd
  hi link SignifySignDelete GitGutterDelete
  hi link SignifySignDeleteFirstLine SignifySignDelete
  hi link SignifySignChange GitGutterChange
  hi link SignifySignChangeDelete GitGutterChangeDelete
  hi link javaScriptOpSymbols cssImportant
  hi link javaScriptParens cssProp
  hi javaScriptDocTags guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javaScriptDocSeeTag Question
  hi link javaScriptBrowserObjects SpellCap
  hi link javaScriptDOMObjects SpellCap
  hi link javaScriptFuncArg jsonNumber
  hi link gitcommitBranch SpellCap
  hi gitcommitDiscardedType guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedType cssTagName
  hi link gitcommitHeader cssProp
  hi link gitcommitUntrackedFile jsonNumber
  hi gitcommitDiscardedFile guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedFile cssClassName
  hi GitSignsAddInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,underline cterm=Bold,undercurl guisp=#9b69e4
  hi GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,strikethrough guisp=#9a62d6
  hi GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,underline guisp=#d8a9ff
  hi GitGutterAdd guifg=#9b69e4 ctermfg=141 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChange guifg=#9a62d6 ctermfg=98 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#d17ae1 ctermfg=168 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChangeDelete guifg=#7f4d90 ctermfg=96 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link jsParensIfElse cssProp
  hi link jsObjectKey cssProp
  hi link jsRepeat cssClassName
  hi jsArrowFunction guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi link jsFunctionKey cssClassName
  hi link jsObjectFuncName cssClassName
  hi link jsNull jsonNumber
  hi link jsObjectColon cssImportant
  hi link jsParens cssProp
  hi link jsFuncParens cssProp
  hi link jsFuncArgs jsonNumber
  hi jsSpecial guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi link jsTemplateBraces cssImportant
  hi link jsGlobalObjects SpellCap
  hi jsGlobalNodeObjects guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi jsImport guifg=#9a62d6 ctermfg=98 gui=Italic cterm=Italic
  hi link jsExport TSAttribute
  hi jsExportDefault guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi link jsExportDefaultGroup SpellCap
  hi link jsFrom jsReturn
  hi ALEErrorSign guifg=#d17ae1 ctermfg=168 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEWarningSign guifg=#d8a9ff ctermfg=183 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEInfoSign guifg=#9b69e4 ctermfg=141 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link plug2 cssClassName
  hi plugH2 guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link plugBracket cssProp
  hi link plugNumber jsonNumber
  hi link plugDash jsonNumber
  hi plugStar guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link plugMessage jsonNumber
  hi link plugName cssProp
  hi link plugUpdate cssImportant
  hi link plugEdge cssClassName
  hi plugSha guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi plugNotLoaded guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#d8a9ff ctermfg=183 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#9a62d6 ctermfg=98 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeResultsBorder guifg=#d2a1f1 ctermfg=177 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePreviewBorder guifg=#9b69e4 ctermfg=141 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelectionCaret guifg=#d2a1f1 ctermfg=177 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#d3b9f2 ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi TelescopeMatching guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi sqlStatement guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi sqlKeyword guifg=#d3b9f2 ctermfg=183 gui=Bold cterm=Bold
  hi sqlSpecial guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link sqlType Question
  hi sqlFunction guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlKeyword guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link mysqlOperator DiagnosticHint
  hi mysqlFunction guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlStatement guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlType guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link Quote Label
  hi link cPreCondit cssProp
  hi link cDefine typescriptReserved
  hi link cStructure Question
  hi cStorageClass guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomClass guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomMemVar guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustom guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cType typescriptReserved
  hi cCustomParen guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cConditional Repeat
  hi link cCustomFunc Function
  hi cStatement guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cppSTLnamespace Question
  hi cppAccess guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cAnsiFunction guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cRepeat Repeat
  hi cSpecial guifg=#7f4d90 ctermfg=96 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi yamlFlowString guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link yamlFlowStringDelimiter cssAttr
  hi yamlKeyValueDelimiter guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownH1 cssProp
  hi markdownHeadingRule guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi markdownHeadingDelimiter guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link markdownListMarker jsonNumber
  hi link markdownBlockquote jsonNumber
  hi link markdownRule cssClassName
  hi link markdownLinkText cssClassName
  hi link markdownLinkTextDelimiter cssProp
  hi link markdownLinkDelimiter cssProp
  hi link markdownIdDeclaration cssTagName
  hi link markdownAutomaticLink SpellCap
  hi link markdownUrl SpellCap
  hi markdownUrlTitle guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownUrlDelimiter jsonNumber
  hi markdownUrlTitleDelimiter guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownCodeDelimiter SpellCap
  hi markdownCode guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownEscape SpellCap
  hi link markdownError cssImportant
  hi ClapPreview guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi ClapMatches guifg=#d2a1f1 ctermfg=177 guibg=#5e3c5d ctermbg=239 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#9a62d6
  hi ClapDisplay guifg=#d2a1f1 ctermfg=177 guibg=bg ctermbg=234 gui=Bold,undercurl cterm=Bold,undercurl guisp=#d2a1f1
  hi TSAnnotation guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi TSAttribute guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi TSCharacter guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi link TSComment Comment
  hi TSError guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl
  hi TSPunctDelimiter guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi TSPunctBracket guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi TSPunctSpectial guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSConstant Constant
  hi TSConstBuiltin guifg=#d2a1f1 ctermfg=177 gui=Italic cterm=Italic
  hi TSConstMacro guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi link TSString String
  hi TSStringRegex guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi TSStringEscape guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi link TSNumber Number
  hi link TSBoolean Boolean
  hi link TSFloat Float
  hi TSField guifg=#9b69e4 ctermfg=141 gui=Bold cterm=Bold
  hi link TSType Type
  hi TSTypeBuiltin guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi TSProperty guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi TSParameter guifg=#d3b9f2 ctermfg=183 gui=NONE cterm=NONE
  hi TSConstructor guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi TSFunction guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi TSKeywordFunction guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi TSFunctionBuiltin guifg=#9b69e4 ctermfg=141 gui=Bold cterm=Bold
  hi TSFuncBuiltin guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi TSFuncMacro guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi TSParameterReference guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSMethod Function
  hi TSConditional guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi link TSRepeat Repeat
  hi TSException guifg=#d17ae1 ctermfg=168 gui=Italic cterm=Italic
  hi link TSLabel Label
  hi link TSOperator Operator
  hi link TSKeyword Keyword
  hi link TSStructure Structure
  hi link TSInclude  Include
  hi link TSTag Tag
  hi link TSTagDelimiter Delimiter
  hi link TSVariable Identifier
  hi TSVariableBuiltin guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi TSDefinitionUsage guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi link TSDefinition Definition
  hi TSStrong guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi TSEmphasis guifg=#d8a9ff ctermfg=183 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi TSUnderline guifg=#9b69e4 ctermfg=141 gui=undercurl cterm=undercurl
  hi link TSTitle SpecialKey
  hi TSLiteral guifg=#d3b9f2 ctermfg=183 gui=NONE cterm=NONE
  hi TSURI guifg=#9b69e4 ctermfg=141 gui=Italic cterm=Italic
  hi TSCurrentScope guibg=bg ctermbg=234 gui=Bold cterm=Bold
  hi TSIdentifier guifg=#d3b9f2 ctermfg=183 gui=Bold cterm=Bold
  hi link TSNameSpace Function
  hi link pythonStatement Repeat
  hi link pythonRepeat Repeat
  hi pythonFunction guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonExClass guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link pythonBuiltinObj Repeat
  hi pythonDot guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinFunc guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsStorageClass guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi jsOperator guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi jsString guifg=#9b69e4 ctermfg=141 gui=Italic cterm=Italic
  hi jsComment guifg=#9a9ab5 ctermfg=246 gui=Italic cterm=Italic
  hi jsFuncCall guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi link jsNumber TSParameter
  hi link jsObjectProp DiagnosticHint
  hi jsOperatorKeyword guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi jsBooleanFalse guifg=#d17ae1 ctermfg=168 gui=NONE cterm=NONE
  hi jsBooleanTrue guifg=#d17ae1 ctermfg=168 gui=NONE cterm=NONE
  hi link jsRegexpString CocHintSign
  hi link jsConditional jsReturn
  hi jsFunction guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi jsFunctionCall guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi jsFuncBlock guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi jsReturn guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi jsFuncName guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi link jsParensError jsFuncParens
  hi link jsClassDefinition SpecialKey
  hi jsModuleAs guifg=#9a62d6 ctermfg=98 gui=Italic cterm=Italic
  hi jsExtendsKeyword guifg=#d8a9ff ctermfg=183 gui=Italic cterm=Italic
  hi javaScriptReserved guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi link javaScriptConditional jsReturn
  hi link javaScriptStringS SpecialKey
  hi javaScriptBoolean guifg=#d17ae1 ctermfg=168 gui=NONE cterm=NONE
  hi javaScriptBraces guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi javaScriptLineComment guifg=#9a9ab5 ctermfg=246 gui=Italic cterm=Italic
  hi link javaScriptSpecial TSParameter
  hi javaScriptFunction guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi link javaScriptStatement jsReturn
  hi javaScriptException guifg=#d17ae1 ctermfg=168 gui=NONE cterm=NONE
  hi vimCommentString guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link vimCommentTitle Question
  hi vimError guifg=#d3b9f2 ctermfg=183 guibg=#d17ae1 ctermbg=168 gui=NONE cterm=NONE
  hi LightspeedLabel guifg=#d8a9ff ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#9b69e4
  hi LightspeedOverlapped guifg=NONE ctermfg=NONE guibg=#d17ae1 ctermbg=168 gui=NONE cterm=NONE
  hi LightspeedLabelDistant guifg=NONE ctermfg=NONE guibg=#d17ae1 ctermbg=168 gui=NONE cterm=NONE
  hi LightspeedLabelDistantOverlapped guifg=NONE ctermfg=NONE guibg=#d17ae1 ctermbg=168 gui=NONE cterm=NONE
  hi LightspeedShortcut guifg=#d2a1f1 ctermfg=177 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedShortcutOverlapped guifg=#d2a1f1 ctermfg=177 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedMaskedChar guifg=#d17ae1 ctermfg=168 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedGreyWash guifg=#d8a9ff ctermfg=183 gui=Italic cterm=Italic
  hi LightspeedUnlabeledMatch guifg=#d2a1f1 ctermfg=177 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedOneCharMatch guifg=#9a62d6 ctermfg=98 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedUniqueChar guifg=#d3b9f2 ctermfg=183 gui=Bold cterm=Bold
  hi LightspeedPendingOpArea guifg=#d2a1f1 ctermfg=177 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedPendingChangeOpArea guifg=#d3b9f2 ctermfg=183 gui=Bold cterm=Bold
  hi LightspeedCursor guifg=#d8a9ff ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi HopNextKey guifg=#d2a1f1 ctermfg=177 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey1 guifg=#9b69e4 ctermfg=141 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey2 guifg=#d8a9ff ctermfg=183 gui=Bold,underline cterm=Bold,underline
  hi IndentBlanklineChar guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineContextChar guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi IndentBlanklineContextStart guifg=#d8a9ff ctermfg=183 gui=Bold,underline cterm=Bold,underline guisp=#d8a9ff
  hi IndentBlanklineIndent1 guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent2 guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent3 guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent4 guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent5 guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent6 guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonEscape guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonNumber guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link jsonBraces cssAttr
  hi link jsonNull jsonNumber
  hi link jsonBoolean jsonNumber
  hi link jsonKeywordMatch cssImportant
  hi link jsonQuote cssAttr
  hi link jsonNoise cssImportant
  hi DiagnosticError guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignError guifg=#d17ae1 ctermfg=168 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link DiagnosticErrorFloating DiagnosticError
  hi DiagnosticWarning guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignWarn guifg=#9b69e4 ctermfg=141 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticWarningFloating guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarning guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link DiagnosticUnderlineError DiagnosticError
  hi link DiagnosticFloatingError DiagnosticError
  hi link DiagnosticFloatingWarning DiagnosticWarning
  hi link DiagnosticFloatingInfo DiagnosticInfo
  hi link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticSignInfo guifg=#9a62d6 ctermfg=98 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignHint guifg=#d8a9ff ctermfg=183 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticHintFloating guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi LspReferenceText guibg=#5e3c5d ctermbg=239 gui=Bold,undercurl cterm=Bold,undercurl guisp=#d8a9ff
  hi LspReferenceRead guifg=#9b69e4 ctermfg=141 gui=Bold,undercurl cterm=Bold,undercurl guisp=#d8a9ff
  hi LspReferenceWrite guifg=#9b69e4 ctermfg=141 gui=Bold,undercurl cterm=Bold,undercurl guisp=#d8a9ff
  hi LspFloatWinNormal guifg=#d3b9f2 ctermfg=183 guibg=#4e2d4d ctermbg=236 gui=NONE cterm=NONE
  hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#d3b9f2
  hi link cssVendor cssTagName
  hi cssTagName guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssAttrComma cssAttr
  hi link cssBackgroundProp cssProp
  hi link cssBorderProp cssProp
  hi link cssBoxProp SpellCap
  hi link cssDimensionProp SpellCap
  hi link cssFontProp cssProp
  hi link cssPositioningProp SpellCap
  hi link cssTextProp cssProp
  hi link cssValueLength cssAttr
  hi link cssValueInteger cssAttr
  hi link cssValueNumber cssAttr
  hi link cssIdentifier cssTagName
  hi link cssIncludeKeyword jsonNumber
  hi cssImportant guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssClassName guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssClassNameDot cssAttr
  hi cssProp guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssAttr guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssUnitDecorators cssAttr
  hi link cssNoise cssImportant
  hi goBuiltins guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=Bold,Italic cterm=Bold,Italic
  hi goConditional guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclType guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi goDirective guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goFloats Character
  hi goFunction guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi goFunctionCall guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi goFunctionReturn guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi goImport guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goLabel guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goMethod Function
  hi goMethodCall guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi goPackage guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goRepeat guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goSignedInts guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goStruct guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi goStructDef guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi link goUnsignedInts Character
  hi link goParamName TSParameter
  hi goParamType guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi goParen guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclaration guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi goSameId guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi goPredefinedIdentifiers guifg=#d17ae1 ctermfg=168 gui=Italic cterm=Italic
  hi goVar guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi goType guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi goTypeDecl guifg=#9b69e4 ctermfg=141 gui=Bold cterm=Bold
  hi goTypeName guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi link stylusVariable cssAttr
  hi link stylusClass cssClassName
  hi link stylusClassChar cssProp
  hi link stylusId cssClassName
  hi link stylusIdChar cssProp
  hi link cssVisualVal cssAttr
  hi link stylusImport jsonNumber
  hi CocErrorSign guifg=#d17ae1 ctermfg=168 gui=NONE cterm=NONE
  hi CocWarningSign guifg=#d3b9f2 ctermfg=183 gui=NONE cterm=NONE
  hi CocHintSign guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi link CocInfoSign TSParameter
  hi CocLine gui=undercurl cterm=undercurl guisp=#d8a9ff
  hi CocUnderline gui=undercurl cterm=undercurl guisp=#d8a9ff
  hi CocErrorline gui=undercurl cterm=undercurl guisp=#d17ae1
  hi link FugitiveblameHash cssProp
  hi link FugitiveblameUncommitted cssImportant
  hi link FugitiveblameTime cssClassName
  hi link FugitiveblameNotCommittedYet jsonNumber
  hi Normal guifg=#d8a9ff ctermfg=183 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi NormalFloat guifg=#d3b9f2 ctermfg=183 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi NormalNC guifg=#d8a9ff ctermfg=183 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi FloatBorder guifg=#9a62d6 ctermfg=98 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi LineNr guifg=#9a62d6 ctermfg=98 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold cterm=Bold
  hi CursorLineSign guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold cterm=Bold
  hi CursorLineNr guifg=#d8a9ff ctermfg=183 guibg=bg3 ctermbg=234 gui=Bold cterm=Bold
  hi ColorColumn guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi Cursor guibg=#d8a9ff ctermbg=183 gui=NONE cterm=NONE
  hi CursorIM guifg=#d8a9ff ctermfg=183 guibg=#d2a1f1 ctermbg=177 gui=NONE cterm=NONE
  hi CursorColumn guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi Directory guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#4e2d4d ctermbg=236 gui=Bold cterm=Bold
  hi DiffChange guifg=NONE ctermfg=NONE guibg=bg2 ctermbg=236 gui=Bold cterm=Bold
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239
  hi DiffText guifg=NONE ctermfg=NONE guibg=#4e2d4d ctermbg=236 gui=Bold,Italic,underline cterm=Bold,Italic,underline
  hi ErrorMsg guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi VertSplit guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi Folded guifg=#d2a1f1 ctermfg=177 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi FoldColumn guifg=#7f4d90 ctermfg=96 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi SignColumn guifg=NONE ctermfg=NONE guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#9b69e4
  hi MatchParen guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#9b69e4
  hi ModeMsg guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#9a9ab5 ctermfg=246 gui=NONE cterm=NONE
  hi PMenu guifg=#d8a9ff ctermfg=183 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi PMenuSel guifg=#d8a9ff ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuKind guifg=#d8a9ff ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuExtra guifg=#9a62d6 ctermfg=98 guibg=#5e3c5d ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#9a9ab5 ctermbg=246 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#d2a1f1 ctermbg=177 gui=NONE cterm=NONE
  hi MsgArea guifg=#d8a9ff ctermfg=183 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi Question guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=NONE ctermfg=NONE guibg=#5e3c5d ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#d2a1f1
  hi SpecialKey guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi SpellBad guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#d17ae1
  hi SpellCap guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#9b69e4
  hi StatusLine guifg=#d8a9ff ctermfg=183 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#d2a1f1 ctermfg=177 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi TabLine guifg=#9a62d6 ctermfg=98 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TabLineFill guifg=#7f4d90 ctermfg=96 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi Title guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi Visual guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi VisualNOS guifg=#9a9ab5 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#d2a1f1 ctermfg=177 gui=undercurl cterm=undercurl guisp=#d17ae1
  hi WildMenu guifg=#d2a1f1 ctermfg=177 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#9a9ab5 ctermfg=246 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi Comment guifg=#9a9ab5 ctermfg=246 gui=Italic cterm=Italic
  hi Constant guifg=#d3b9f2 ctermfg=183 gui=NONE cterm=NONE
  hi String guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi Character guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Boolean guifg=#d17ae1 ctermfg=168 gui=Italic cterm=Italic
  hi Number guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi Float guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE
  hi Identifier guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi Function guifg=#9a62d6 ctermfg=98 gui=Bold cterm=Bold
  hi Statement guifg=#d2a1f1 ctermfg=177 gui=Bold cterm=Bold
  hi Conditional guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#d2a1f1 ctermfg=177 gui=Italic cterm=Italic
  hi Label guifg=#9b69e4 ctermfg=141 gui=Italic cterm=Italic
  hi Operator guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi Keyword guifg=#9a62d6 ctermfg=98 gui=Bold,Italic cterm=Bold,Italic
  hi Exception guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi PreProc guifg=#d2a1f1 ctermfg=177 gui=NONE cterm=NONE

  hi Include guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi Define guifg=#d17ae1 ctermfg=168 gui=Bold cterm=Bold
  hi Macro guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#d3b9f2 ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#9b69e4 ctermfg=141 gui=Bold cterm=Bold
  hi StorageClass guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi Structure guifg=#d8a9ff ctermfg=183 gui=Bold cterm=Bold
  hi Typedef guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

  hi Tag guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi htmlTag guifg=#9a9ab5 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link htmlEndTag htmlTag

  hi Delimiter guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi SpecialComment guifg=#9a9ab5 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#9a9ab5 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Error guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#d17ae1
  hi Todo guifg=#d2a1f1 ctermfg=177 guibg=#5e3c5d ctermbg=239 gui=Bold,underline cterm=Bold,underline
  hi typescriptParens guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLogicSymbols cssImportant
  hi typescriptReserved guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLabel DiagnosticHintFloating
  hi typescriptFuncName guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptCall jsonNumber
  hi link typescriptVariable typescriptReserved
  hi link typescriptBinaryOp cssImportant
  hi link typescriptAssign cssImportant
  hi typescriptObjectLabel guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptDotNotation cssImportant
  hi link typescriptOperator cssImportant
  hi link typescriptTernaryOp cssImportant
  hi link typescriptTypeAnnotation cssImportant
  hi link typescriptIdentifierName cssAttr
  hi typescriptArrowFuncArg guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptParamImpl jsonNumber
  hi link typescriptRepeat cssClassName
  hi link typescriptStatementKeyword SpellCap
  hi link typescriptAliasKeyword cssClassName
  hi typescriptInterfaceKeyword guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptTemplateSB cssImportant
  hi link typescriptMemberOptionality jsonNumber
  hi link typescriptOptionalMark jsonNumber
  hi link typescriptUnaryOp cssImportant
  hi link typescriptBranch Statement
  hi link pugJavascriptOutputChar jsonNumber
  hi fzf1 guifg=#9b69e4 ctermfg=141 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf2 guifg=#d8a9ff ctermfg=183 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf3 guifg=#d17ae1 ctermfg=168 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi link NERDTreeHelp cssAttr
  hi link NERDTreeHelpKey cssClassName
  hi link NERDTreeHelpCommand jsonNumber
  hi link NERDTreeHelpTitle cssProp
  hi link NERDTreeUp cssClassName
  hi link NERDTreeCWD SpellCap
  hi link NERDTreeOpenable cssImportant
  hi link NERDTreeClosable jsonNumber
  hi link javascriptOpSymbol cssImportant
  hi javascriptDocNotation guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocNamedParamType Question
  hi javascriptDocParamName guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocParamType Question
  hi link javascriptTemplateSB cssImportant
  hi link javascriptRepeat cssClassName
  hi link javascriptObjectLabelColon cssImportant
  hi link javascriptObjectMethodName cssClassName
  hi link javascriptFuncName cssClassName
  hi diffRemoved guifg=#d17ae1 ctermfg=168 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffChanged guifg=#9a62d6 ctermfg=98 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffAdded guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffLine guifg=#d8a9ff ctermfg=183 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffSubname guifg=#9b69e4 ctermfg=141 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffComment guifg=#d2a1f1 ctermfg=177 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#9b69e4 ctermfg=141 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi link BufferLineBuffer Comment
  hi link BufferLineBufferVisible Comment
  hi BufferLineFill guifg=#5e3c5d ctermfg=239 guibg=#5e3c5d ctermbg=239 gui=NONE cterm=NONE
  hi BuffetCurrentBuffer guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BuffetActiveBuffer guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BuffetBuffer guibg=#d8a9ff ctermbg=183 gui=NONE cterm=NONE
  hi BuffetModCurrentBuffer guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BuffetModActiveBuffer guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BuffetModBuffer guifg=#5e3c5d ctermfg=239 guibg=#9a62d6 ctermbg=98 gui=NONE cterm=NONE
  hi BuffetTrunc guibg=#d8a9ff ctermbg=183 gui=NONE cterm=NONE
  hi BuffetTab guibg=#9b69e4 ctermbg=141 gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi link CmpItemAbbrMatch CocHintSign
  hi CmpItemAbbrMatchFuzzy guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#d8a9ff ctermfg=183 gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#9b69e4 ctermfg=141 gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#d3b9f2 ctermfg=183 gui=NONE cterm=NONE
  hi CmpItemKindFunction guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#9a62d6 ctermfg=98 gui=NONE cterm=NONE
  hi link elmDelimiter cssAttr
  hi link elmOperator cssImportant
  hi link helpHyperTextEntry cssClassName
  hi link helpHeadline SpellCap
  hi helpSectionDelim guifg=#7f4d90 ctermfg=96 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link helpNote cssImportant
  hi link xmlNamespace jsonNumber
  hi link xmlAttribPunct cssImportant
  hi link xmlProcessingDelim cssImportant
endif
if has('terminal')
  let g:terminal_ansi_colors = [
  \ "#1e1e2e",
  \ "#d17ae1",
  \ "#9b69e4",
  \ "#9b69e4",
  \ "#d8a9ff",
  \ "#d8a9ff",
  \ "#d8a9ff",
  \ "#4e2d4d",
  \ "#1e1e2e",
  \ "#d2a1f1",
  \ "#d3b9f2",
  \ "#d3b9f2",
  \ "#d2a1f1",
  \ "#d3b9f2",
  \ "#9a62d6",
  \ "#d8a9ff"
  \ ]
endif

if has('nvim')
  let g:terminal_color_foreground = "#d8a9ff"
  let g:terminal_color_background = "#1e1e2e"
  let g:terminal_color_0 = "#1e1e2e"
  let g:terminal_color_1 = "#d17ae1"
  let g:terminal_color_2 = "#9b69e4"
  let g:terminal_color_3 = "#9b69e4"
  let g:terminal_color_4 = "#d8a9ff"
  let g:terminal_color_5 = "#d8a9ff"
  let g:terminal_color_6 = "#d8a9ff"
  let g:terminal_color_7 = "#4e2d4d"
  let g:terminal_color_8 = "#1e1e2e"
  let g:terminal_color_9 = "#d2a1f1"
  let g:terminal_color_10 = "#d3b9f2"
  let g:terminal_color_11 = "#d3b9f2"
  let g:terminal_color_12 = "#d2a1f1"
  let g:terminal_color_13 = "#d3b9f2"
  let g:terminal_color_14 = "#9a62d6"
  let g:terminal_color_15 = "#d8a9ff"
endif
