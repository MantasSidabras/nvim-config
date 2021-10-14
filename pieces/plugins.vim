call plug#begin("$XDG_CONFIG_HOME/nvim/plugins")
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'preservim/nerdtree'
  " Plug 'ryanoasis/vim-devicons' " nerdtree icons
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree icon colors
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'liuchengxu/vim-which-key'
  Plug 'mhinz/vim-startify'
  Plug 'kana/vim-arpeggio'

  Plug 'jiangmiao/auto-pairs'
  Plug 'vimwiki/vimwiki'
  Plug 'kyazdani42/nvim-web-devicons'

  " debugger
  Plug 'puremourning/vimspector'

  " autocomplete
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim' " code actions 
  Plug 'nvim-lua/lsp_extensions.nvim' " smart inlay hints
  Plug 'onsails/lspkind-nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  " fuzzy find
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' 
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
call plug#end()
