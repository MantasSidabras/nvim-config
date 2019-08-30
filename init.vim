call plug#begin('~/.config/nvim/bundle')
  Plug 'raimondi/delimitmate'
  Plug 'w0rp/ale'
  Plug '907th/vim-auto-save'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx' " JSX syntax
  Plug 'ianks/vim-tsx' " TSX syntax
  Plug 'shougo/deoplete.nvim' " suggestion and autocomplete
  Plug 'leafgarland/typescript-vim'
call plug#end()

set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

let g:auto_save = 1
let g:deoplete#enable_at_startup = 1

" let g:ale_fixers = {
" /    'javascript': ['eslint'],
" }

let g:ale_fix_on_save = 1

let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_jump_expansion = 1
let g:delimitMate_balance_matchpairs = 1

map <C-b> :NERDTreeToggle<CR>

"----------Window splits ----------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-DOWN> <C-W><C-J>
nnoremap <C-UP> <C-W><C-K>
nnoremap <C-RIGHT> <C-W><C-L>
nnoremap <C-LEFT> <C-W><C-H>

set splitbelow
set splitright
"----------------------------------------

imap jk <Esc>

"----------editor theme------------------
syntax on
colorscheme gruvbox
"----------------------------------------
