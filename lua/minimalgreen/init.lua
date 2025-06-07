local M = {}
local palette = require("colours").palette

local function set_highlights()
	local highlights = {
		-- Editor highlights
		Normal = { fg = palette.fg, bg = palette.bg },
		NormalFloat = { fg = palette.fg, bg = palette.selection },
		FloatBorder = { fg = palette.pale_green, bg = palette.selection },

		LineNr = { fg = palette.dark_green },
		CursorLine = { bg = palette.cursor_line },
		CursorLineNr = { fg = palette.light_green, bold = true },
		Visual = { bg = palette.visual },
		Search = { fg = palette.bg, bg = palette.search },
		IncSearch = { fg = palette.bg, bg = palette.light_green },

		-- Status line
		StatusLine = { fg = palette.fg, bg = palette.selection },
		StatusLineNC = { fg = palette.medium_green, bg = palette.selection },

		-- Syntax highlighting
		Comment = { fg = palette.medium_green, italic = false },
		Constant = { fg = palette.pale_green },
		String = { fg = palette.light_green },
		Character = { fg = palette.light_green },
		Number = { fg = palette.pale_green },
		Boolean = { fg = palette.pale_green },
		Float = { fg = palette.pale_green },
		Identifier = { fg = palette.fg },
		Function = { fg = palette.pale_green },
		Statement = { fg = palette.fg, bold = true },
		Conditional = { fg = palette.fg, bold = true },
		Repeat = { fg = palette.fg, bold = true },
		Label = { fg = palette.fg, bold = true },
		Operator = { fg = palette.fg },
		Keyword = { fg = palette.fg, bold = true },
		Exception = { fg = palette.fg, bold = true },
		PreProc = { fg = palette.fg, bold = true },
		Include = { fg = palette.fg, bold = true },
		Define = { fg = palette.fg, bold = true },
		Macro = { fg = palette.fg, bold = true },
		PreCondit = { fg = palette.fg, bold = true },

		-- Types and interfaces
		Type = { fg = palette.pale_green },
		StorageClass = { fg = palette.pale_green },
		Structure = { fg = palette.pale_green },
		Typedef = { fg = palette.pale_green },
		Special = { fg = palette.light_green },
		SpecialChar = { fg = palette.light_green },
		Tag = { fg = palette.pale_green },
		Delimiter = { fg = palette.fg },
		SpecialComment = { fg = palette.light_green },
		Debug = { fg = palette.medium_green },

		-- Errors and diagnostics
		Error = { fg = palette.error },
		ErrorMsg = { fg = palette.error },
		WarningMsg = { fg = palette.warning },

		-- Popup menu
		Pmenu = { fg = palette.fg, bg = palette.selection },
		PmenuSel = { fg = palette.bg, bg = palette.light_green },
		PmenuSbar = { bg = palette.selection },
		PmenuThumb = { bg = palette.light_green },

		-- Tabs
		TabLine = { fg = palette.medium_green, bg = palette.selection },
		TabLineFill = { bg = palette.selection },
		TabLineSel = { fg = palette.fg, bg = palette.bg },

		-- Splits
		VertSplit = { fg = palette.selection },
		WinSeparator = { fg = palette.selection },

		-- Git signs
		GitSignsAdd = { fg = palette.light_green },
		GitSignsChange = { fg = palette.pale_green },
		GitSignsDelete = { fg = palette.medium_green },
		GitSignsCurrentLineBlame = { fg = palette.medium_green },

		-- LSP diagnostics
		DiagnosticError = { fg = palette.error },
		DiagnosticWarn = { fg = palette.warning },
		DiagnosticInfo = { fg = palette.pale_green },
		DiagnosticHint = { fg = palette.medium_green },

		-- Treesitter highlights
		["@variable"] = { fg = palette.fg },
		["@variable.builtin"] = { fg = palette.pale_green },
		["@function"] = { fg = palette.pale_green },
		["@function.builtin"] = { fg = palette.pale_green },
		["@keyword"] = { fg = palette.fg, bold = true },
		["@keyword.function"] = { fg = palette.fg, bold = true },
		["@keyword.operator"] = { fg = palette.fg, bold = true },
		["@keyword.return"] = { fg = palette.fg, bold = true },
		["@string"] = { fg = palette.light_green },
		["@number"] = { fg = palette.pale_green },
		["@boolean"] = { fg = palette.pale_green },
		["@type"] = { fg = palette.pale_green },
		["@type.builtin"] = { fg = palette.pale_green },
		["@comment"] = { fg = palette.medium_green, italic = false },
		["@operator"] = { fg = palette.fg },
		["@punctuation"] = { fg = palette.fg },
		["@punctuation.bracket"] = { fg = palette.fg },
		["@punctuation.delimiter"] = { fg = palette.fg },
		["@tag"] = { fg = palette.pale_green },
		["@attribute"] = { fg = palette.light_green },
		["@property"] = { fg = palette.fg },
		["@field"] = { fg = palette.fg },
		["@parameter"] = { fg = palette.fg },
		["@constant"] = { fg = palette.pale_green },
		["@constant.builtin"] = { fg = palette.pale_green },
		["@constructor"] = { fg = palette.pale_green },
		["@namespace"] = { fg = palette.pale_green },
		["@module"] = { fg = palette.pale_green },
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
	vim.g.colors_name = "minimalgreen"

	-- Apply highlights
	set_highlights()
end

return M
