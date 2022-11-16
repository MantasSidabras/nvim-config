local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer... close and reopen neovim...")
  vim.cmd([[packadd packer.nvim]])
end
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Couldn't find packer")
  return
end

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  use({ "wbthomason/packer.nvim" }) -- plugin manager
  use({ "nvim-lua/plenary.nvim" })
  use({ "nvim-lua/popup.nvim" })

  use({ "airblade/vim-rooter" })
  use({ "kana/vim-arpeggio" })
  use({ "lewis6991/gitsigns.nvim" })
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use({ "liuchengxu/vim-which-key" })
  -- Lua
  use ({ "folke/which-key.nvim"
        -- , config = function() require("which-key").setup {
        --   -- your configuration comes here
        --   -- or leave it empty to use the default settings
        --   -- refer to the configuration section below
      -- }
  -- end
  })
  use({ "mhinz/vim-startify" })
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
            vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
            require("catppuccin").setup()
    end
  }
  use({ "morhetz/gruvbox" })
  use({ "luisiacc/gruvbox-baby" })
  use({ "norcalli/nvim-colorizer.lua" })
  use({ "nvim-lualine/lualine.nvim" })
  use({ "vimwiki/vimwiki" })
  use({ "windwp/nvim-autopairs" })

  -- File explorer
  use({ "kyazdani42/nvim-web-devicons" }) -- for file icons
  use({ "lambdalisue/fern-bookmark.vim" })
  use({ "lambdalisue/fern-hijack.vim" })
  use({ "lambdalisue/fern-renderer-nerdfont.vim" })
  use({ "lambdalisue/fern.vim" })
  use({ "lambdalisue/nerdfont.vim" })

  -- fuzzy find
  use({ "andymass/vim-matchup", event = "VimEnter" })
  use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })
  use({ "tpope/vim-commentary" })
  use({ "tpope/vim-dadbod" }) -- use for databases in future
  use({ "kristijanhusak/vim-dadbod-ui" })
  use({ "tpope/vim-fugitive" })
  use({ "tpope/vim-surround" })
  use({ "tpope/vim-unimpaired" })
  use({ "tpope/vim-repeat" })

  use({ "moll/vim-bbye" })
  use({
    "ThePrimeagen/refactoring.nvim",
    requires = { { "nvim-lua/plenary.nvim" }, { "nvim-treesitter/nvim-treesitter" } },
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-refactor",
  })
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

  use({ "p00f/nvim-ts-rainbow" })
  use({ "nvim-telescope/telescope.nvim" })
  use({ "nvim-telescope/telescope-fzy-native.nvim" })

  -- use({ "hrsh7th/nvim-cmp" })
  -- use({ "hrsh7th/cmp-nvim-lsp" })
  -- use({ "hrsh7th/cmp-buffer" })
  -- use({ "hrsh7th/cmp-path" })
  -- use({ "hrsh7th/cmp-nvim-lua" })
  -- use({ "saadparwaiz1/cmp_luasnip" })
  -- use{ 'hrsh7th/cmp-cmdline' }
  use({ "onsails/lspkind-nvim" })
  -- use({ "L3MON4D3/LuaSnip" })

  -- use({
  --   "neovim/nvim-lspconfig",
  --   "williamboman/nvim-lsp-installer",
  -- })
  use({ "jose-elias-alvarez/null-ls.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
  use({ "neovimhaskell/haskell-vim" })
  use {'ndmitchell/ghcid', rtp = "plugins/nvim" } 
  use {'neoclide/coc.nvim', branch = 'release'}
  use { 'fannheyward/telescope-coc.nvim'}
  use {'liuchengxu/vista.vim'}

  use({ 'mbbill/undotree' })

  -- languages
  use { 'Olical/conjure' }
  use { 'guns/vim-sexp' }
  use { 'tpope/vim-sexp-mappings-for-regular-people' }
  use ({ 'clojure-vim/vim-jack-in', requires = {{ 'radenling/vim-dispatch-neovim' }} })

  -- debugging
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'mfussenegger/nvim-dap-python'

  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
  -- use {
  --   "microsoft/vscode-js-debug",
  --     opt = true,
  --     run = "npm install --legacy-peer-deps && npm run compile" 
  --   }
    
    if PACKER_BOOTSTRAP then
      require("packer").sync()
    end
end)
    
    
