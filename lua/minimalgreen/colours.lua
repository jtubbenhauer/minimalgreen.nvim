local M = {}

M.palette = {
	-- Base colors
	bg = "#062421",
	fg = "#ffffff",

	-- Green shades
	medium_green = "#44aa88", -- Medium green for comments
	dark_green = "#336655", -- Darker green for line numbers
	pale_green = "#99ffcc", -- Pale green for types/identifiers
	light_green = "#00ff88", -- Bright green for strings

	-- UI colors
	selection = "#1a4a42", -- Slightly lighter than bg for selections
	cursor_line = "#0a332e", -- Current line highlight
	visual = "#2a5a52", -- Visual selection
	search = "#44ff99", -- Search highlights (bright green)
	error = "#ff6666", -- Keep error readable but muted
	warning = "#ffaa66", -- Keep warning readable but muted
}

return M
