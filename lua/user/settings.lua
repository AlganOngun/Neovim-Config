require("macros")

-- General Settings

set("tabstop", 2)
set("shiftwidth", 2)
set("mouse", "")
set("number", true)
set("relativenumber", true)
set("termguicolors", true)
set("shell", "fish")

vim.cmd([[let g:rust_recommended_style = 1]])
vim.cmd([[let g:rustfmt_autosave = 1]])

-- Default options:
require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")
