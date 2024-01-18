local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("plugins")
require("user.mappings")
require("user.settings")

require("lualine").setup({})

require("pluginConfigs.cmp")

require("pluginConfigs.formatter")

-- place this in one of your configuration file(s)
local hop = require("hop")
vim.keymap.set("", ";", function()
	hop.hint_words({ current_line_only = false, multi_windows = true })
end, { remap = true })
vim.keymap.set("", "f", function()
	hop.hint_char1({ current_line_only = true })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_lines_skip_whitespace({
		current_line_only = false,
		multi_windows = true,
	})
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_lines({
		current_line_only = false,
		multi_windows = true,
	})
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_patterns({ current_line_only = false, multi_windows = true })
end, { remap = true })

vim.cmd([[
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
aug kitty_cursor
    au!
    au Colorscheme * set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
aug END
]])

vim.cmd([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]])
