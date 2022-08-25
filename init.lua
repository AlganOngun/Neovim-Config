require("user.settings")
require("user.mappings")
require("user.plugins")

require("pluginConfigs.treesitter")
require("pluginConfigs.completionConfig")
require("pluginConfigs.formatter")

require("nvim-tree").setup()

require("bufferline").setup({})

vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])
