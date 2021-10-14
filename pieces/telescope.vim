noremap <silent><C-p> :lua require('telescope-config').project_files()<cr>
noremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <leader>t <cmd>Telescope<cr>

noremap <C-b> <cmd>Telescope file_browser<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <leader><end> :lua require('telescope-config').search_vimfiles()<cr>
nnoremap <silent><leader>ht <cmd>Telescope help_tags<cr>

