-- Enable auto-indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4    -- Set the number of spaces per tab

-- Show line numbers
vim.o.number = true

-- Background
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])

-- Key Bindings
-- -- Search
vim.api.nvim_set_keymap('n', 'sn', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sp', ':cprev<CR>', { noremap = true, silent = true })
