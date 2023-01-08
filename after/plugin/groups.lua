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
