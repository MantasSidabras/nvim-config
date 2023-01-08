return function(use)
  use({
    "folke/which-key.nvim",
      config = function()
        require("which-key").setup({})
      end
  })
  use({ "kana/vim-arpeggio" })
  -- tpopes
  use({ "tpope/vim-surround" })
  use({ "tpope/vim-unimpaired" })
  use({ "tpope/vim-repeat" })

  -- File explorer
  use({ "kyazdani42/nvim-web-devicons" }) -- for file icons
  use({ "lambdalisue/fern-bookmark.vim" })
  use({ "lambdalisue/fern-hijack.vim" })
  use({ "lambdalisue/fern-renderer-nerdfont.vim" })
  use({ "lambdalisue/fern.vim" })
  use({ "lambdalisue/nerdfont.vim" })

  use({ "moll/vim-bbye" })
  use({
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup({})
    end,
  })
  use({
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-treesitter.configs").setup({ autotag = { enable = true } })
    end,
  })
end
