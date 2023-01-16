return function(use)
  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end
  })
  -- vim goodness
  use({ "kana/vim-arpeggio" })
  -- use({ "tpope/vim-surround" })
  use({ "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function() require("nvim-surround").setup({}) end
  })
  use({ "tpope/vim-unimpaired" })
  use({ "tpope/vim-repeat" })
  use({ "moll/vim-bbye" })
  use({ "andymass/vim-matchup", event = "VimEnter" })

  -- File explorer
  use({ "kyazdani42/nvim-web-devicons" }) -- for file icons
  use({ "lambdalisue/fern-bookmark.vim" })
  use({ "lambdalisue/fern-hijack.vim" })
  use({ "lambdalisue/fern-renderer-nerdfont.vim" })
  use({ "lambdalisue/fern.vim" })
  use({ "lambdalisue/nerdfont.vim" })


  use({ "airblade/vim-rooter" })
  use({ 'mbbill/undotree' })
  -- use({ 'karb94/neoscroll.nvim' }, { config = function() require('neoscroll').setup() end })

  -- focus
  use({ "folke/twilight.nvim", config = function() require("twilight").setup({}) end })
  use({ "folke/zen-mode.nvim", config = function() require("zen-mode").setup {} end })

  -- language features
  use({
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-treesitter.configs').setup({
        autotag = { enable = true }
      })
    end
  })


  use({ 'nvim-treesitter/nvim-treesitter-refactor' })
  use({ 'jose-elias-alvarez/null-ls.nvim' })


  use {
    'rmagatti/alternate-toggler',
    event = { "BufReadPost" }, -- lazy load after reading a buffer
  }
  use 'mg979/vim-visual-multi'
  use 'axelvc/template-string.nvim'
  use 'folke/todo-comments.nvim'


  use 'sainnhe/everforest' -- nice theme
  use 'xiyaowong/nvim-transparent'
  use 'eandrju/cellular-automaton.nvim' -- makes editor go nuts :CellularAutomaton make_it_rain
end
