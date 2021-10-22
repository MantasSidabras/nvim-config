noremap <silent><leader>ff :lua require('telescope-config').project_files()<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <leader>t <cmd>Telescope<cr>
nnoremap <leader>fb <cmd>: lua require('telescope-config').curr_buffer()<cr>

" noremap <Leader>b <cmd>Telescope file_browser<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <leader><end> :lua require('telescope-config').search_vimfiles()<cr>
nnoremap <leader>cc :Telescope coc 
nnoremap <leader>cr <cmd>Telescope coc references<cr>
