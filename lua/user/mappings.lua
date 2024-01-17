require("macros")

createKeymapWithCustomOptions("sl", ":w<CR>", {}, "n")
createKeymapWithCustomOptions("<c-x><c-l>", "<Plug>(fzf-complete-line)", {}, "i")
createKeymapWithCustomOptions("<c-x><c-p>", "<Plug>(fzf-complete-path)", {}, "i")
createKeymapWithCustomOptions("<c-s>", "<Esc>:w<CR>a", {}, "i")

-- Buffer Navigation Keys
createKeymap("gj", "<c-w>j")
createKeymap("gh", "<c-w>h")
createKeymap("gk", "<c-w>k")
createKeymap("gl", "<c-w>l")

createKeymap("<space>o", ":Files<CR>")
createKeymap("<space>j", ":Buffers<CR>")
createKeymap("<space>t", ":tabn<CR>")

-- Formatting

-- Terminal Mode Keys
local terminalKeymap = function(key, action)
	createKeymap(key, action, "t")
end

-- Exiting Terminal Mode With Esc
terminalKeymap("<Esc>", "<c-\\><c-n>")
