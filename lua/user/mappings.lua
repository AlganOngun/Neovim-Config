require("macros")

createKeymapWithCustomOptions("sl", ":w<CR>", {}, "n")
createKeymapWithCustomOptions("<c-x><c-l>", "<Plug>(fzf-complete-line)", {}, "i")
createKeymapWithCustomOptions("<c-x><c-p>", "<Plug>(fzf-complete-path)", {}, "i")

-- Buffer Navigation Keys
createKeymap("<c-h>", ":TmuxNavigateLeft<CR>")
createKeymap("<c-l>", ":TmuxNavigateRight<CR>")
createKeymap("<c-j>", ":TmuxNavigateDown<CR>")
createKeymap("<c-k>", ":TmuxNavigateUp<CR>")

createKeymap("<space>o", ":Files<CR>")
createKeymap("<space>j", ":Buffers<CR>")
createKeymap("<space>g", ":Rg<CR>")
createKeymap("<space>t", ":tabn<CR>")

-- Formatting

-- Terminal Mode Keys
local terminalKeymap = function(key, action)
	createKeymap(key, action, "t")
end

-- Exiting Terminal Mode With Esc
terminalKeymap("<Esc>", "<c-\\><c-n>")
