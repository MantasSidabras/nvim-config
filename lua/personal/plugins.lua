local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "Installing packer... close and reopen neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify "Couldn't find packer"
  return 
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
     end
  }
}

return packer.startup(function(use)
  use {'wbthomason/packer.nvim'} -- plugin manager
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}

  use { 'airblade/vim-rooter' }
  use { 'kana/vim-arpeggio' }
  use { 'lewis6991/gitsigns.nvim', config = function() require('nvim-autopairs').setup() end }
  use { 'liuchengxu/vim-which-key'}
  use { 'mhinz/vim-startify'}
  use { 'morhetz/gruvbox'}
  use { 'norcalli/nvim-colorizer.lua'}
  use { 'nvim-lualine/lualine.nvim' }
  use { 'vimwiki/vimwiki' }
  use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup() end }

-- File explorer
  use {'kyazdani42/nvim-web-devicons'} -- for file icons
  use{'lambdalisue/fern-bookmark.vim'}
  use{'lambdalisue/fern-hijack.vim'}
  use{'lambdalisue/fern-renderer-nerdfont.vim'}
  use{'lambdalisue/fern.vim'}
  use{'lambdalisue/nerdfont.vim'}


-- COC completion
  use { 'fannheyward/telescope-coc.nvim' }
  use { 'neoclide/coc.nvim', branch = 'release' }

-- fuzzy find
  use { 'junegunn/fzf',  run = function() vim.fn['fzf#install']() end } 
  use { 'junegunn/fzf.vim' }

  use {'andymass/vim-matchup', event = 'VimEnter'}
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview' }
  use {'tpope/vim-commentary'}
  use {'tpope/vim-dadbod'} -- use for databases in future
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-unimpaired'}


  use {'moll/vim-bbye'}
  use { "ThePrimeagen/refactoring.nvim", requires = { {"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"} } }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/playground' }
  use { 'p00f/nvim-ts-rainbow' }
  use {'nvim-telescope/telescope.nvim'} 
  use {'nvim-telescope/telescope-fzy-native.nvim'}

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
