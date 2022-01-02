call plug#begin("$XDG_CONFIG_HOME/nvim/plugins")
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'
Plug 'kana/vim-arpeggio'
" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
Plug 'vimwiki/vimwiki'

" debugger
Plug 'puremourning/vimspector'

" autocomplete
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
" Plug 'glepnir/lspsaga.nvim' " code actions 
" Plug 'nvim-lua/lsp_extensions.nvim' " smart inlay hints
" Plug 'onsails/lspkind-nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" File explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'

" Plug 'ptzz/lf.vim'
" Plug 'voldikss/vim-floaterm'

Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-bookmark.vim'

"COC completion
Plug 'fannheyward/telescope-coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-telescope/telescope.nvim' 
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'
call plug#end()
