call plug#begin("$XDG_CONFIG_HOME/nvim/plugins")
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'kana/vim-arpeggio'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'kyazdani42/nvim-web-devicons'

" utils
Plug 'nvim-lua/plenary.nvim'

" debugger
Plug 'puremourning/vimspector'

" autocomplete
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'glepnir/lspsaga.nvim' " code actions 
Plug 'nvim-lua/lsp_extensions.nvim' " smart inlay hints
Plug 'onsails/lspkind-nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" File explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'

Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'


"COC completion
Plug 'fannheyward/telescope-coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fuzzy find
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' 
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()
