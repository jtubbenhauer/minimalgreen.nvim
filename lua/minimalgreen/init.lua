local M = {}
local colours = require("colours")

local function set_highlights()
	local highlights = {
		-- Editor highlights
		Normal = { fg = colours.fg, bg = colours.bg },
		NormalFloat = { fg = colours.fg, bg = colours.selection },
		FloatBorder = { fg = colours.pale_green, bg = colours.selection },

		LineNr = { fg = colours.dark_green },
		CursorLine = { bg = colours.cursor_line },
		CursorLineNr = { fg = colours.light_green, bold = true },
		Visual = { bg = colours.visual },
		Search = { fg = colours.bg, bg = colours.search },
		IncSearch = { fg = colours.bg, bg = colours.light_green },

		-- Status line
		StatusLine = { fg = colours.fg, bg = colours.selection },
		StatusLineNC = { fg = colours.medium_green, bg = colours.selection },

		-- Syntax highlighting
		Comment = { fg = colours.medium_green, italic = false },
		Constant = { fg = colours.pale_green },
		String = { fg = colours.light_green },
		Character = { fg = colours.light_green },
		Number = { fg = colours.pale_green },
		Boolean = { fg = colours.pale_green },
		Float = { fg = colours.pale_green },
		Identifier = { fg = colours.fg },
		Function = { fg = colours.pale_green },
		Statement = { fg = colours.fg, bold = true },
		Conditional = { fg = colours.fg, bold = true },
		Repeat = { fg = colours.fg, bold = true },
		Label = { fg = colours.fg, bold = true },
		Operator = { fg = colours.fg },
		Keyword = { fg = colours.fg, bold = true },
		Exception = { fg = colours.fg, bold = true },
		PreProc = { fg = colours.fg, bold = true },
		Include = { fg = colours.fg, bold = true },
		Define = { fg = colours.fg, bold = true },
		Macro = { fg = colours.fg, bold = true },
		PreCondit = { fg = colours.fg, bold = true },

		-- Types and interfaces
		Type = { fg = colours.pale_green },
		StorageClass = { fg = colours.pale_green },
		Structure = { fg = colours.pale_green },
		Typedef = { fg = colours.pale_green },
		Special = { fg = colours.light_green },
		SpecialChar = { fg = colours.light_green },
		Tag = { fg = colours.pale_green },
		Delimiter = { fg = colours.fg },
		SpecialComment = { fg = colours.light_green },
		Debug = { fg = colours.medium_green },

		-- Errors and diagnostics
		Error = { fg = colours.error },
		ErrorMsg = { fg = colours.error },
		WarningMsg = { fg = colours.warning },

		-- Popup menu
		Pmenu = { fg = colours.fg, bg = colours.selection },
		PmenuSel = { fg = colours.bg, bg = colours.light_green },
		PmenuSbar = { bg = colours.selection },
		PmenuThumb = { bg = colours.light_green },

		-- Tabs
		TabLine = { fg = colours.medium_green, bg = colours.selection },
		TabLineFill = { bg = colours.selection },
		TabLineSel = { fg = colours.fg, bg = colours.bg },

		-- Splits
		VertSplit = { fg = colours.selection },
		WinSeparator = { fg = colours.selection },

		-- Git signs
		GitSignsAdd = { fg = colours.light_green },
		GitSignsChange = { fg = colours.pale_green },
		GitSignsDelete = { fg = colours.medium_green },
		GitSignsCurrentLineBlame = { fg = colours.medium_green },

		-- LSP diagnostics
		DiagnosticError = { fg = colours.error },
		DiagnosticWarn = { fg = colours.warning },
		DiagnosticInfo = { fg = colours.pale_green },
		DiagnosticHint = { fg = colours.medium_green },

		-- Treesitter highlights
		["@variable"] = { fg = colours.fg },
		["@variable.builtin"] = { fg = colours.pale_green },
		["@function"] = { fg = colours.pale_green },
		["@function.builtin"] = { fg = colours.pale_green },
		["@keyword"] = { fg = colours.fg, bold = true },
		["@keyword.function"] = { fg = colours.fg, bold = true },
		["@keyword.operator"] = { fg = colours.fg, bold = true },
		["@keyword.return"] = { fg = colours.fg, bold = true },
		["@string"] = { fg = colours.light_green },
		["@number"] = { fg = colours.pale_green },
		["@boolean"] = { fg = colours.pale_green },
		["@type"] = { fg = colours.pale_green },
		["@type.builtin"] = { fg = colours.pale_green },
		["@comment"] = { fg = colours.medium_green, italic = false },
		["@operator"] = { fg = colours.fg },
		["@punctuation"] = { fg = colours.fg },
		["@punctuation.bracket"] = { fg = colours.fg },
		["@punctuation.delimiter"] = { fg = colours.fg },
		["@tag"] = { fg = colours.pale_green },
		["@attribute"] = { fg = colours.light_green },
		["@property"] = { fg = colours.fg },
		["@field"] = { fg = colours.fg },
		["@parameter"] = { fg = colours.fg },
		["@constant"] = { fg = colours.pale_green },
		["@constant.builtin"] = { fg = colours.pale_green },
		["@constructor"] = { fg = colours.pale_green },
		["@namespace"] = { fg = colours.pale_green },
		["@module"] = { fg = colours.pale_green },
	}

	-- Apply all highlights
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

function M.setup()
	-- Reset existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colourscheme name
	vim.g.colours_name = "minimalgreen"

	-- Apply highlights
	set_highlights()
end

return M
