return function(use)
  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end
  })
  -- vim goodness
  use({ "kana/vim-arpeggio" })
  use({ "tpope/vim-surround" })
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

  -- focus
  use({ "folke/twilight.nvim", config = function() require("twilight").setup({}) end })
  use({ "folke/zen-mode.nvim", config = function() require("zen-mode").setup {} end })

  -- language features
  use({
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-treesitter.configs").setup({
        autotag = { enable = true }
      })
    end
  })

  use({ "jose-elias-alvarez/null-ls.nvim" })

  
  use {
    'rmagatti/alternate-toggler',
    event = { "BufReadPost" }, -- lazy load after reading a buffer
  }
  use 'mg979/vim-visual-multi'
  use 'axelvc/template-string.nvim'
  use 'folke/todo-comments.nvim'


  use 'sainnhe/everforest'
  use 'xiyaowong/nvim-transparent'
end
