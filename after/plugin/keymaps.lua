local opts = { noremap = true, silent = true }
local noremap = { noremap =true }
-- local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Insert
keymap("i", "jk", "<ESC>", opts)
keymap("i", "<C-l>", "<DEL>", opts)

-- Normal
keymap("n", ",f", ":Format<CR>", opts)
keymap("n", "<BS>", ":Bd<CR>", opts)
keymap("n", "<CR>", ":nohl<CR>", opts)
keymap("n", "Q", ":q<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", noremap)
keymap("n", "<C-c>", "<ESC>", noremap)

keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("n", "x", '"_x', opts)       -- paste doesn't override register
keymap("n", "<Del>", '"_x', opts)   -- paste doesn't override register
keymap("n", "X", '"_X', opts)       -- paste doesn't override register

-- Comand
keymap("c", "w!!", "w !sudo tee %", noremap)

-- keymap("n", "<F5>", "<cmd>luafile %<CR>", noremap)
-- Visual
-- better tabbing
keymap("v", "<", "<gv", opts)
keymap("v", "p", '"_dP', opts) -- paste doesn't override register
keymap("v", ">", ">gv", opts)


keymap("n", "J", "mzJ`z", opts) -- no jitter while line joining
keymap("v", "K", ":m '<-2<CR>gv=gv", opts) -- move text block up
keymap("v", "J", ":m '>+1<CR>gv=gv", opts) -- move text block down
keymap("n", ",l", "<cmd>make<CR>", opts)
