source $XDG_CONFIG_HOME/nvim/pieces/plugins.vim

source $XDG_CONFIG_HOME/nvim/pieces/defaults.vim
source $XDG_CONFIG_HOME/nvim/pieces/remaps.vim
source $XDG_CONFIG_HOME/nvim/pieces/bindings.vim
source $XDG_CONFIG_HOME/nvim/pieces/window_bindings.vim 
source $XDG_CONFIG_HOME/nvim/pieces/quick_fix.vim
source $XDG_CONFIG_HOME/nvim/pieces/git_bindings.vim

source $XDG_CONFIG_HOME/nvim/pieces/file_types.vim
source $XDG_CONFIG_HOME/nvim/pieces/netrw.vim
source $XDG_CONFIG_HOME/nvim/pieces/theme.vim
source $XDG_CONFIG_HOME/nvim/pieces/plugin_rainbow_parenthesis.vim
source $XDG_CONFIG_HOME/nvim/pieces/plugin_startify.vim
source $XDG_CONFIG_HOME/nvim/pieces/plugin_vimwiki.vim 
" TODO configure which key
" source $XDG_CONFIG_HOME/nvim/pieces/plugin_which_key.vim

source $XDG_CONFIG_HOME/nvim/pieces/vimspector.vim
source $XDG_CONFIG_HOME/nvim/pieces/plugin_airline.vim
source $XDG_CONFIG_HOME/nvim/pieces/lsp-config.vim

source $XDG_CONFIG_HOME/nvim/pieces/telescope.vim
" source $XDG_CONFIG_HOME/nvim/pieces/lspsaga.vim

"luafile $XDG_CONFIG_HOME/nvim/lua/lsp/lspsaga.lua
luafile $XDG_CONFIG_HOME/nvim/lua/telescope-config.lua
luafile $XDG_CONFIG_HOME/nvim/lua/treesitter.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/compe-config.lua
" luafile $XDG_CONFIG_HOME/nvim/lua/cmp-config.lua

" LSP
luafile $XDG_CONFIG_HOME/nvim/lua/lsp/coq-config.lua
luafile $XDG_CONFIG_HOME/nvim/lua/lsp/lua-ls.lua
luafile $XDG_CONFIG_HOME/nvim/lua/lsp/lsp.lua

