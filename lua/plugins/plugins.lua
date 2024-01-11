return {
	-- Status Line
	{
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	},

	-- LPS, MASON, LINTERS etc.
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"amarakon/nvim-cmp-buffer-lines",
	"hrsh7th/nvim-cmp",
	"honza/vim-snippets",
	"SirVer/ultisnips",
	"quangnguyen30192/cmp-nvim-ultisnips",

	"tpope/vim-surround",
	"junegunn/fzf",
	"junegunn/fzf.vim",

	"mfussenegger/nvim-jdtls",
	{
		"smoka7/hop.nvim",
		version = "*",
		opts = {},
	},

	"rust-lang/rust.vim",

	-- Formatting
	"mhartington/formatter.nvim",

	-- Indent Blank Line
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

	"kyazdani42/nvim-web-devicons",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},

	-- Comment
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	-- Auto Pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},

	-- Colorscheme
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	-- install without yarn or npm
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}
