nnoremap <SPACE> <Nop>
let g:mapleader="\<Space>"
" set timeout timeoutlen=1500
" write when file open without sudo
cmap w!! w !sudo tee %  
imap jk <Esc>

nnoremap <leader>ss :mksession! $VIMCONFIG/sessions/
nnoremap <leader>ls :source! $VIMCONFIG/sessions/

nnoremap <silent><BS> :bd<CR>
"nmap <M-;> msA;<ESC>`s

nmap <silent> <CR> :nohl<CR>

autocmd InsertEnter * norm zz


augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { timeout=600 }
augroup END

"C-l act like C-h"
inoremap <C-l> <DEL>

" center searchresult
nnoremap n nzzzv
nnoremap N Nzzzv

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" save on leaving insert mode
"imap <silent> <Esc> <Esc>:update<CR>

nmap <silent> Q :q<CR>
nmap <silent> <C-q> :q<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

ab xx :lua require("plenary.reload").reload_module("telescope-config")<cr>
    " \:lua require("plenary.reload").reload_module("nvim-tree")<cr>
    " \:lua require("plenary.reload").reload_module("lua/treesitter-config")<cr>
    " \:lua require("plenary.reload").reload_module("miscellaneous")<cr>
   \:so $VIMRC<cr>
