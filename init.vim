call plug#begin('~/config/nvim/bundle')
  Plug 'raimondi/delimitmate'
  Plug 'w0rp/ale'
  Plug '907th/vim-auto-save'
  Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx' " JSX syntax
  Plug 'ianks/vim-tsx' " TSX syntax
  Plug 'shougo/deoplete.nvim' " suggestion and autocomplete
  Plug 'ctrlpvim/ctrlp.vim'
"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
"  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
" coc extensions
  let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
  Plug 'ianks/vim-tsx'
  "------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
  Plug 'leafgarland/typescript-vim'

  " themes
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================

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
set noswapfile  " ignore swap file
 
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab

set splitbelow
set splitright

" for nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Hybrid line numbering
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" let g:auto_save = 1
let g:deoplete#enable_at_startup = 1

let g:ale_fix_on_save = 1

let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_jump_expansion = 1
let g:delimitMate_balance_matchpairs = 1

map <C-b> :NERDTreeToggle<CR>
let mapleader=","
set timeout timeoutlen=1500
"----------Window splits ----------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-DOWN> <C-W><C-J>
nnoremap <C-UP> <C-W><C-K>
nnoremap <C-RIGHT> <C-W><C-L>
nnoremap <C-LEFT> <C-W><C-H>
"----------------------------------------

imap jk <Esc>

"----------editor theme------------------
syntax on
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
"----------------------------------------
