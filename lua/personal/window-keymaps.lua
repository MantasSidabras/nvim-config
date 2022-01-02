local opts = { noremap = true, silent = true }
local noremap = { noremap =true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap


keymap('n', "<UP>", "<C-W><C-K>", opts)
keymap('n', "<DOWN>", "<C-W><C-J>", opts)
keymap('n', "<RIGHT>", "<C-W><C-L>", opts)
keymap('n', "<LEFT>", "<C-W><C-H>", opts)

keymap('n', "<M-UP>", ":resize +2<CR>", noremap)
keymap('n', "<M-DOWN>", ":resize -2<CR>", noremap)
keymap('n', "<M-LEFT>", ":vertical resize -2<CR>", noremap)
keymap('n', "<M-RIGHT>", ":vertical resize +2<CR>", noremap)
