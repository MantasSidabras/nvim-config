local nvim_lsp = require('lspconfig')

-- npm i -g bash-language-server
nvim_lsp.bashls.setup {}
-- npm i -g pyright
nvim_lsp.pyright.setup {}
-- npm i -g typescript typescript-language-server
nvim_lsp.tsserver.setup {}
-- npm install -g vim-language-server
nvim_lsp.vimls.setup {}
-- npm install -g graphql-language-service-cli
nvim_lsp.graphql.setup {}
