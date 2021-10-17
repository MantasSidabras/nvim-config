let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_preview = 1

" fix dangling buffer behaviour
autocmd FileType netrw setl bufhidden=wipe

" nnoremap <leader>e :E<CR>
" nnoremap <leader>v :Vex<CR>
let g:lf_replace_netrw = 1
let g:lf_replace_netrw = 1
let g:lf_map_keys = 0

nnoremap - <cmd>Lf<cr>
