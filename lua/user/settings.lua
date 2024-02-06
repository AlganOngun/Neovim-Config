require("macros")

-- General Settings

set("tabstop", 8)
set("shiftwidth", 8)
set("mouse", "")
set("number", true)
set("relativenumber", true)
set("termguicolors", true)
set("shell", "zsh")
set("guicursor", "")

vim.cmd([[let g:rust_recommended_style = 1]])
vim.cmd([[let g:rustfmt_autosave = 1]])
