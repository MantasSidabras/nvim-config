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

  use {'tpope/vim-surround'}
  use {'tpope/vim-unimpaired'}
  use {'tpope/vim-commentary'}
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-dadbod'} -- use for databases in future

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
