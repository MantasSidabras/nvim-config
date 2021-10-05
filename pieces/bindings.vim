nnoremap <SPACE> <Nop>
let g:mapleader="\<Space>"
" set timeout timeoutlen=1500
"
"write when file open without sudo
cmap w!! w !sudo tee %  
imap jk <Esc>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <BS> :bdelete<CR>

nnoremap <silent> <Leader>q :bdelete<CR>
nmap <M-;> msA;<ESC>`s

" Ctrl + n to clear search highlight
nmap <silent> <CR> :nohl<CR>

" center window on insert
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

imap <silent> <Esc> <Esc>:update<CR>
inoremap <C-p> <C-r>0

nmap <silent> W :w<CR>
nmap <silent> Q :q<CR>
nmap <silent> <C-q> :q<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"
