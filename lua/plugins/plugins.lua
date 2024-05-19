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

	"tpope/vim-surround",
	"junegunn/fzf",
	"junegunn/fzf.vim",

	"christoomey/vim-tmux-navigator",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"smoka7/hop.nvim",
		version = "*",
		opts = {},
	},

	"rust-lang/rust.vim",

	-- Formatting
	"mhartington/formatter.nvim",

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

	{
		"thimc/gruber-darker.nvim",
		config = function()
			require("gruber-darker").setup({
				-- OPTIONAL
				transparent = false, -- removes the background
				underline = true, -- disables underline fonts
				bold = true, -- disables bold fonts
			})
			vim.cmd.colorscheme("gruber-darker")
		end,
	},

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
