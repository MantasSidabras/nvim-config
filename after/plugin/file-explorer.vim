let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_preview = 1
" fix dangling buffer behaviour
autocmd FileType netrw setl bufhidden=wipe

" nnoremap <leader>e :E<CR>
" nnoremap <leader>v :Vex<CR>

augroup FernGroup
  autocmd!
  autocmd FileType fern setlocal norelativenumber | setlocal nonumber
augroup END

let g:fern#renderer = "nerdfont"
nnoremap <silent><leader>bm :Fern bookmark:///<CR>
nnoremap <silent><leader>n :Fern . -reveal=% -drawer  -width=40 -toggle<CR>

" Abd dirs and files inside the brackets that need to remain hidden
let hide_dirs  = '^\%(\.git\|node_modules\)$'  " here you write the dir names 
let hide_files = '\%(\.pyc\)\+'    " here you write the file names
let g:fern#default_exclude = hide_dirs . '\|' . hide_files  " here you exclude them

cab Vex :Fern . -opener=vsplit -reveal=%<CR>
cab Ex :Fern . -reveal=%<CR>
cab E :Fern . -reveal=%<CR>
cab Sex :Fern . -opener=split -reveal=%<CR>
nnoremap - :Fern . -reveal=%<CR>

