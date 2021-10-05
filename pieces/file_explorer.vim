nnoremap <leader>b :NERDTreeFocus<CR>

function! IsNerdTreeEnabled()
    return exists('g:NERDTree') && g:NERDTree.IsOpen()
endfunction
" focus current file when opened
function! NERDTreeToggler()
    if !IsNerdTreeEnabled()
        :execute 'NERDTreeFind'
    else
        :execute 'NERDTreeToggle'
    endif
endfunction

nnoremap <silent><C-b> :call NERDTreeToggler()<CR>
    
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"             \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

