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

vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme gruvbox")
