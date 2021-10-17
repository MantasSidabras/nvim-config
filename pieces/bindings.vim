nnoremap <SPACE> <Nop>
let g:mapleader="\<Space>"
" set timeout timeoutlen=1500
" write when file open without sudo
cmap w!! w !sudo tee %  
imap jk <Esc>

nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <silent><BS> :bdelete<CR>
"nmap <M-;> msA;<ESC>`s

nmap <silent> <CR> :nohl<CR>

autocmd InsertEnter * norm zz


augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { timeout=600 }
augroup END

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
