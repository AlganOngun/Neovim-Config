function set(option, value)
	vim.opt[option] = value
end

function createKeymap(key, action, mode)
	mode = mode or "n"

	vim.api.nvim_set_keymap(mode, key, action, { noremap = true })
end

function createKeymapWithCustomOptions(key, action, options, mode)
	mode = mode or "n"

	vim.api.nvim_set_keymap(mode, key, action, options)
end
