require('macros')

-- Saving with Ctrl+S
createKeymapWithCustomOptions('sl', ':w<CR>', {}, 'n')
createKeymapWithCustomOptions('<c-s>', '<Esc>:w<CR>a', {}, 'i')

-- Buffer Navigation Keys
createKeymap('gj', '<c-w>j')
createKeymap('gh', '<c-w>h')
createKeymap('gk', '<c-w>k')
createKeymap('gl', '<c-w>l')

-- Formatting



-- Nvim Tree Keys

createKeymap(';t', ':NvimTreeToggle<CR>')

-- Bufferline Keys

createKeymap('fh', ':BufferLineCyclePrev<CR>')
createKeymap('fl', ':BufferLineCycleNext<CR>')
createKeymap('fj', ':bdelete!<CR>')

-- Terminal Mode Keys
local terminalKeymap = function (key, action) createKeymap(key, action, 't') end

-- Exiting Terminal Mode With Esc
terminalKeymap('<Esc>', '<c-\\><c-n>')
