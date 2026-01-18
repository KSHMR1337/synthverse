-- stylua: ignore
return {
	colorscheme = function()
		vim.cmd("hi clear")

		local ct = {
			white = '#d3b9f2',
			text = '#d3b9f2',
			textdark = '#d8a9ff',
			bright = '#d3b9f2',
			fg = '#d8a9ff',
			fg0 = '#d8a9ff',
			fg1 = '#d8a9ff',
			bg = '#1e1e2e',
			bg0 = '#1e1e2e',
			bg1 = '#4e2d4d',
			bg2 = '#5e3c5d',
			bg3 = '#6e4c6d',
			bg4 = '#3e1d3d',
			normalbg = '#1e1e2e',
			orange = '#d17ae1',
			orange1 = '#d2a1f1',
			orange2 = '#d8a9ff',
			yellow = '#e2a1d1',
			yellow1 = '#d8a9ff',
			yellow2 = '#d3b9f2',
			green = '#9b69e4',
			green1 = '#9a62d6',
			green2 = '#b3a0d5',
			blue = '#9a62d6',
			blue1 = '#7f4d90',
			blue2 = '#6f5f7f',
			purple = '#d2a1f1',
			purple1 = '#d8a9ff',
			purple2 = '#b3a0d5',
			red = '#d17ae1',
			red1 = '#d2a1f1',
			red2 = '#9a62d6',
			magenta1 = '#d3b9f2',
			magenta2 = '#d8a9ff',
			pink = '#9a62d6',
			pinkpop = '#d2a1f1',
			cyan = '#d3b9f2',
			crimson = '#d17ae1',
			violet = '#d8a9ff',
			emerald = '#9b69e4',
			gray = '#9a9ab5',
			gray1 = '#6f5f7f',
			gray2 = '#5e3c5d',
			comment = '#9a9ab5',
		}

		vim.api.nvim_set_hl(0, "Normal", {fg=ct.fg, bg=ct.bg, ctermfg=183, ctermbg=234, })
		vim.api.nvim_set_hl(0, "NormalFloat", {fg=ct.text, bg=ct.bg1, ctermfg=183, ctermbg=236, })
		vim.api.nvim_set_hl(0, "NormalNC", {fg=ct.textdark, bg=ct.bg1, ctermfg=183, ctermbg=236, })
		vim.api.nvim_set_hl(0, "FloatBorder", {fg=ct.blue, bg=ct.bg1, ctermfg=98, ctermbg=236, })
		vim.api.nvim_set_hl(0, "LineNr", {fg=ct.blue, bg=ct.bg, ctermfg=98, ctermbg=234, })
		vim.api.nvim_set_hl(0, "CursorLine", {bg=ct.bg2, ctermbg=239, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "CursorLineSign", {bg=ct.bg2, ctermbg=239, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "CursorLineNr", {fg=ct.purple1, bg=ct.bg, ctermfg=183, ctermbg=234, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "ColorColumn", {bg=ct.bg2, ctermbg=239, })
		vim.api.nvim_set_hl(0, "Cursor", {bg=ct.fg, ctermbg=183, })
		vim.api.nvim_set_hl(0, "CursorIM", {fg=ct.fg, bg=ct.purple, ctermfg=183, ctermbg=177, })
		vim.api.nvim_set_hl(0, "CursorColumn", {bg=ct.bg2, ctermbg=239, })
		vim.api.nvim_set_hl(0, "Directory", {fg=ct.purple1, ctermfg=183, })
		vim.api.nvim_set_hl(0, "DiffAdd", {bg=ct.bg1, ctermbg=236, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "DiffChange", {bg=ct.bg1, ctermbg=236, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "DiffDelete", {bg=ct.bg2, ctermbg=239, })
		vim.api.nvim_set_hl(0, "DiffText", {bg=ct.bg1, ctermbg=236, bold = (vim.g.synthverse_bold==1), italic = (vim.g.synthverse_italic==1), underline = true })
		vim.api.nvim_set_hl(0, "ErrorMsg", {fg=ct.red, ctermfg=168, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "VertSplit", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Folded", {fg=ct.purple, bg=ct.bg4, ctermfg=177, ctermbg=233, })
		vim.api.nvim_set_hl(0, "FoldColumn", {fg=ct.blue1, bg=ct.bg4, ctermfg=96, ctermbg=233, })
		vim.api.nvim_set_hl(0, "SignColumn", {bg=ct.bg4, ctermbg=233, })
		vim.api.nvim_set_hl(0, "IncSearch", {bg=ct.bg2, ctermbg=239, bold = (vim.g.synthverse_bold==1), undercurl = true , italic = (vim.g.synthverse_italic==1), sp=ct.green, })
		vim.api.nvim_set_hl(0, "MatchParen", {fg=ct.purple, ctermfg=177, bold = (vim.g.synthverse_bold==1), undercurl = true , sp=ct.green, })
		vim.api.nvim_set_hl(0, "ModeMsg", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "MoreMsg", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "NonText", {fg=ct.gray, ctermfg=246, })
		vim.api.nvim_set_hl(0, "PMenu", {fg=ct.textdark, bg=ct.bg, ctermfg=183, ctermbg=234, })
		vim.api.nvim_set_hl(0, "PMenuSel", {fg=ct.textdark, bg=ct.bg2, ctermfg=183, ctermbg=239, bold = (vim.g.synthverse_bold==1), italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "PMenuKind", {fg=ct.textdark, bg=ct.bg2, ctermfg=183, ctermbg=239, bold = (vim.g.synthverse_bold==1), italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "PMenuExtra", {fg=ct.blue, bg=ct.bg2, ctermfg=98, ctermbg=239, bold = (vim.g.synthverse_bold==1), italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "PmenuSbar", {bg=ct.gray, ctermbg=246, })
		vim.api.nvim_set_hl(0, "PmenuThumb", {bg=ct.purple, ctermbg=177, })
		vim.api.nvim_set_hl(0, "MsgArea", {fg=ct.textdark, bg=ct.bg, ctermfg=183, ctermbg=234, })
		vim.api.nvim_set_hl(0, "Question", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Search", {bg=ct.bg2, ctermbg=239, bold = (vim.g.synthverse_bold==1), underline = true , italic = (vim.g.synthverse_italic==1), sp=ct.purple, })
		vim.api.nvim_set_hl(0, "SpecialKey", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "SpellBad", {fg=ct.red, ctermfg=168, undercurl = true , sp=ct.red, })
		vim.api.nvim_set_hl(0, "SpellCap", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "SpellRare", {fg=ct.green, ctermfg=141, undercurl = true , sp=ct.green, })
		vim.api.nvim_set_hl(0, "StatusLine", {fg=ct.textdark, bg=ct.bg2, ctermfg=183, ctermbg=239, })
		vim.api.nvim_set_hl(0, "StatusLineNC", {fg=ct.purple, bg=ct.bg2, ctermfg=177, ctermbg=239, })
		vim.api.nvim_set_hl(0, "TabLine", {fg=ct.blue, bg=ct.bg, ctermfg=98, ctermbg=234, })
		vim.api.nvim_set_hl(0, "TabLineFill", {fg=ct.blue1, ctermfg=96, })
		vim.api.nvim_set_hl(0, "TabLineSel", {fg=ct.blue, ctermfg=98, underline = true })
		vim.api.nvim_set_hl(0, "Title", {fg=ct.purple1, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Visual", {bg=ct.bg2, ctermbg=239, })
		vim.api.nvim_set_hl(0, "VisualNOS", {fg=ct.gray, ctermfg=246, })
		vim.api.nvim_set_hl(0, "WarningMsg", {fg=ct.purple, ctermfg=177, undercurl = true , sp=ct.red, })
		vim.api.nvim_set_hl(0, "WildMenu", {fg=ct.purple, bg=ct.bg, ctermfg=177, ctermbg=234, })
		vim.api.nvim_set_hl(0, "EndOfBuffer", {fg=ct.gray, bg=ct.bg, ctermfg=246, ctermbg=234, })
		vim.api.nvim_set_hl(0, "Comment", {fg=ct.comment, ctermfg=246, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "Constant", {fg=ct.white, ctermfg=183, })
		vim.api.nvim_set_hl(0, "String", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "Character", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "Boolean", {fg=ct.red, ctermfg=168, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "Number", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "Float", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Identifier", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "Function", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Statement", {fg=ct.purple, ctermfg=177, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Conditional", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "Repeat", {fg=ct.purple, ctermfg=177, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "Label", {fg=ct.green, ctermfg=141, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "Operator", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Keyword", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1), italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "Exception", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "PreProc", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Include", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "Define", {fg=ct.red, ctermfg=168, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Macro", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "PreCondit", {fg=ct.white, ctermfg=183, })
		vim.api.nvim_set_hl(0, "Type", {fg=ct.green, ctermfg=141, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "StorageClass", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "Structure", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "Typedef", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Special", {fg=ct.red, ctermfg=168, })
		vim.api.nvim_set_hl(0, "SpecialChar", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "Tag", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "Delimiter", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "SpecialComment", {fg=ct.gray, ctermfg=246, })
		vim.api.nvim_set_hl(0, "Debug", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "Underlined", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "Ignore", {fg=ct.gray, ctermfg=246, })
		vim.api.nvim_set_hl(0, "Error", {fg=ct.red, ctermfg=168, bold = (vim.g.synthverse_bold==1), undercurl = true , sp=ct.red, })
		vim.api.nvim_set_hl(0, "Todo", {fg=ct.purple, bg=ct.bg2, ctermfg=177, ctermbg=239, bold = (vim.g.synthverse_bold==1), underline = true })

		-- Diagnostic
		vim.api.nvim_set_hl(0, "DiagnosticError", {fg=ct.red, ctermfg=168, })
		vim.api.nvim_set_hl(0, "DiagnosticSignError", {fg=ct.red, bg=ct.bg, ctermfg=168, ctermbg=234, })
		vim.api.nvim_set_hl(0, "DiagnosticWarning", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {fg=ct.green, bg=ct.bg, ctermfg=141, ctermbg=234, })
		vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {fg=ct.blue, bg=ct.bg, ctermfg=98, ctermbg=234, })
		vim.api.nvim_set_hl(0, "DiagnosticHint", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "DiagnosticSignHint", {fg=ct.purple1, bg=ct.bg, ctermfg=183, ctermbg=234, })

		-- Treesitter
		vim.api.nvim_set_hl(0, "TSAnnotation", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSAttribute", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "TSCharacter", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSError", {fg=ct.red, ctermfg=168, bold = (vim.g.synthverse_bold==1), undercurl = true })
		vim.api.nvim_set_hl(0, "TSPunctDelimiter", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSPunctBracket", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSPunctSpectial", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "TSConstBuiltin", {fg=ct.purple, ctermfg=177, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "TSConstMacro", {fg=ct.purple, ctermfg=177, })
		vim.api.nvim_set_hl(0, "TSStringRegex", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "TSStringEscape", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSField", {fg=ct.green, ctermfg=141, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSTypeBuiltin", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSProperty", {fg=ct.blue, ctermfg=98, })
		vim.api.nvim_set_hl(0, "TSParameter", {fg=ct.white, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSConstructor", {fg=ct.purple, ctermfg=177, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSFunction", {fg=ct.purple, ctermfg=177, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSKeywordFunction", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSFunctionBuiltin", {fg=ct.green, ctermfg=141, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSFuncBuiltin", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSFuncMacro", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSParameterReference", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSConditional", {fg=ct.purple, ctermfg=177, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSException", {fg=ct.red, ctermfg=168, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "TSVariableBuiltin", {fg=ct.textdark, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSDefinitionUsage", {fg=ct.green, ctermfg=141, })
		vim.api.nvim_set_hl(0, "TSStrong", {fg=ct.blue, ctermfg=98, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSEmphasis", {fg=ct.textdark, ctermfg=183, bold = (vim.g.synthverse_bold==1), undercurl = true , italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "TSUnderline", {fg=ct.green, ctermfg=141, undercurl = true })
		vim.api.nvim_set_hl(0, "TSLiteral", {fg=ct.white, ctermfg=183, })
		vim.api.nvim_set_hl(0, "TSURI", {fg=ct.green, ctermfg=141, italic = (vim.g.synthverse_italic==1)})
		vim.api.nvim_set_hl(0, "TSCurrentScope", {bg=ct.bg, ctermbg=234, bold = (vim.g.synthverse_bold==1)})
		vim.api.nvim_set_hl(0, "TSIdentifier", {fg=ct.white, ctermfg=183, bold = (vim.g.synthverse_bold==1)})

		-- Git
		vim.api.nvim_set_hl(0, "GitSignsAdd", {fg=ct.green, bg=ct.bg, ctermfg=141, ctermbg=234, })
		vim.api.nvim_set_hl(0, "GitSignsChange", {fg=ct.blue, bg=ct.bg, ctermfg=98, ctermbg=234, })
		vim.api.nvim_set_hl(0, "GitSignsDelete", {fg=ct.red, bg=ct.bg, ctermfg=168, ctermbg=234, })

		-- LSP
		vim.api.nvim_set_hl(0, "LspReferenceText", {bg=ct.bg2, ctermbg=239, bold = (vim.g.synthverse_bold==1), undercurl = true , sp=ct.textdark, })
		vim.api.nvim_set_hl(0, "LspReferenceRead", {fg=ct.green, ctermfg=141, bold = (vim.g.synthverse_bold==1), undercurl = true , sp=ct.textdark, })
		vim.api.nvim_set_hl(0, "LspReferenceWrite", {fg=ct.green, ctermfg=141, bold = (vim.g.synthverse_bold==1), undercurl = true , sp=ct.textdark, })

		-- Terminal colors
		vim.g.terminal_color_0 = ct.bg
		vim.g.terminal_color_1 = ct.red
		vim.g.terminal_color_2 = ct.green
		vim.g.terminal_color_3 = ct.orange
		vim.g.terminal_color_4 = ct.blue
		vim.g.terminal_color_5 = ct.purple
		vim.g.terminal_color_6 = ct.cyan
		vim.g.terminal_color_7 = ct.fg
		vim.g.terminal_color_8 = ct.gray
		vim.g.terminal_color_9 = ct.red1
		vim.g.terminal_color_10 = ct.green1
		vim.g.terminal_color_11 = ct.yellow
		vim.g.terminal_color_12 = ct.blue1
		vim.g.terminal_color_13 = ct.purple1
		vim.g.terminal_color_14 = ct.cyan
		vim.g.terminal_color_15 = ct.white
	end
}
