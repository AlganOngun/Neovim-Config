local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,

	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,

			function()
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end

				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

		cpp = {
			require("formatter.filetypes.cpp").clangformat,

			function()
				return {
					exe = "clang-format",
				}
			end,
		},

		c = {
			require("formatter.filetypes.c").clangformat,

			function()
				return {
					exe = "clang-format",
				}
			end,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,

			function()
				return {
					exe = "prettier",
				}
			end,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,

			function()
				return {
					exe = "prettier",
				}
			end,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,

			function()
				return {
					exe = "prettier",
				}
			end,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,

			function()
				return {
					exe = "prettier",
				}
			end,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
