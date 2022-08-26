require("macros")

-- General Settings

set("tabstop", 2)
set("shiftwidth", 2)
set("mouse", "")
set("number", true)
set("relativenumber", true)
set("termguicolors", true)
set("shell", "fish")

-- Colorscheme settings

vim.g.catppuccin_flavour = "macchiato"

require("catppuccin").setup()

vim.cmd([[colorscheme catppuccin]])
