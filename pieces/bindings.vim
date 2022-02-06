nnoremap <leader>ss :mksession! $VIMCONFIG/sessions/
nnoremap <leader>ls :source! $VIMCONFIG/sessions/

" nnoremap <silent><BS> :bd<CR>
"nmap <M-;> msA;<ESC>`s

" nmap <silent> <CR> :nohl<CR>

autocmd InsertEnter * norm zz


augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { timeout=600 }
augroup END

ab xx :lua require("plenary.reload").reload_module("telescope-config")<cr>
    " \:lua require("plenary.reload").reload_module("nvim-tree")<cr>
    " \:lua require("plenary.reload").reload_module("lua/treesitter-config")<cr>
    " \:lua require("plenary.reload").reload_module("miscellaneous")<cr>
   \:so $VIMRC<cr>
