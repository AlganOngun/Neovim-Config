require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
})

-- Folding

local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
