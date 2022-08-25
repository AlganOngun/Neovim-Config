return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({ map_cr = true })
		end,
	})

	use("kyazdani42/nvim-web-devicons")

	use("kyazdani42/nvim-tree.lua")

	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	use("nvim-treesitter/nvim-treesitter")

	-- Completion

	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Formatting

	use("mhartington/formatter.nvim")

	-- Hover

	use({
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup({
				init = function()
					-- Require providers
					require("hover.providers.lsp")
					-- require('hover.providers.gh')
					-- require('hover.providers.man')
					-- require('hover.providers.dictionary')
				end,
				preview_opts = {
					border = nil,
				},
				title = true,
			})

			-- Setup keymaps
			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		end,
	})

	-- Commenting

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- Colorschemes

	use({ "catppuccin/nvim", as = "catppuccin" })
end)
