require("macros")

-- General Settings

set("tabstop", 8)
set("shiftwidth", 8)
set("mouse", "")
set("number", true)
set("relativenumber", true)
set("termguicolors", true)
set("shell", "zsh")

vim.cmd.colorscheme("gruber-darker")
vim.cmd([[let g:rust_recommended_style = 1]])
vim.cmd([[let g:rustfmt_autosave = 1]])
vim.cmd([[let g:c_syntax_for_h = 1]])
