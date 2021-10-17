local lsp_installer = require("nvim-lsp-installer")
local nvim_lsp = require('lspconfig')
local coq = require "coq" -- add this

-- -- npm i -g bash-language-server
-- nvim_lsp.bashls.setup {}
-- -- npm i -g pyright
-- nvim_lsp.pyright.setup {}
-- -- npm i -g typescript typescript-language-server
-- nvim_lsp.tsserver.setup {}
-- -- npm install -g vim-language-server
-- nvim_lsp.vimls.setup {}
-- -- npm install -g graphql-language-service-cli
-- nvim_lsp.graphql.setup {}

local function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

lsp_installer.on_server_ready(function(server)
    -- print(dump(server))
    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(coq.lsp_ensure_capabilities())
    vim.cmd([[ do User LspAttachBuffers ]])
end)

-- local function setup_servers()
--     local servers = {'bashls', 'pyright', 'tsserver', 'vimls', 'graphql'}
--     for _, server in pairs(servers) do
--         nvim_lsp[server].setup {}
--         nvim_lsp[server].setup(coq.lsp_ensure_capabilities())
--     end
-- end
-- setup_servers()

