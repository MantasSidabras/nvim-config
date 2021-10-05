"set linebreak	" Break lines at word (requires Wrap lines)
" set showbreak=+++	" Wrap-broken line prefix
" set textwidth=100	" Line wrap (number of cols)
set nowrap      " no line wrap!
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set signcolumn=yes

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

set scrolloff=6

" set colorcolumn=80

set cmdheight=2           " More space for displaying messages
set cursorline            " Enable highlighting of the current line
set encoding=utf-8        " The encoding displayed
set fileencoding=utf-8    " The encoding written to file
set formatoptions-=cro    " Stop newline continution of comments
set hidden                " Required to keep multiple buffers open multiple buffers
set iskeyword+=-          " treat dash separated words as a word text object"
set laststatus=0          " Always display the status line
set nobackup              " This is recommended by coc
set nowritebackup         " This is recommended by coc
set pumheight=10          " makes popup smaller
set ruler                 " show cursor possition
set showtabline=2         " Always show tabs
set timeoutlen=500        " By default timeoutlen is 1000 ms
set updatetime=300        " Faster completion

set splitbelow
set splitright

" copy paste to real clipboard
set clipboard=unnamedplus
" noremap <Leader>y "+y
" noremap <Leader>p "+p
" noremap <Leader>Y "+Y
" noremap <Leader>P "+P

set mouse=a

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd InsertLeave * set relativenumber
  autocmd InsertEnter * set norelativenumber
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
