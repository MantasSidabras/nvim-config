nnoremap <silent> <leader>l :call general#ToggleList("Location List", 'l')<CR>
nnoremap <silent> <leader>q :call general#ToggleList("Quickfix List", 'c')<CR>
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>

function! QuickfixMapping()
  " Go to the previous location and stay in the quickfix window
  nnoremap <buffer> K :cprev<CR>zz<C-w>w

  " Go to the next location and stay in the quickfix window
  nnoremap <buffer> J :cnext<CR>zz<C-w>w
endfunction

augroup quickfix_group
    autocmd!
    autocmd filetype qf call QuickfixMapping()
augroup END
