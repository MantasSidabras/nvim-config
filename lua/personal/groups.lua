-- uncomment when augroup feature is released
-- local group = vim.api.nvim_create_augroup(
--   "numbertoggle", {clear = true}
-- )
-- vim.api.nvim_create_autocmd(
--   "InsertLeave",
--   {command='set relativenumber',
--   group=group}
-- )

-- Toggle relative numbers on insert
vim.cmd([[
  augroup numbertoggle
  autocmd!
  autocmd InsertLeave * set relativenumber
  autocmd InsertEnter * set norelativenumber
  augroup END
]])


vim.cmd([[
  augroup insert_center
    autocmd!
    autocmd InsertEnter * norm zz
  augroup END
]])

vim.cmd([[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua vim.highlight.on_yank { timeout=600 }
  augroup END
]])
