-- Setup nvim-cmp.
local cmp = require 'cmp'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'

cmp.setup({
    completion = {
        -- completeopt = 'menuone,noselect,noinsert'
        completeopt = 'menuone,noinsert'
    },
    formatting = {format = lspkind.cmp_format()},
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Insert}),
        ['<C-p>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Insert}),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end
    },
    sources = {{name = 'nvim_lsp'}, {name = 'luasnip'}, {name = 'buffer'}}
})

-- Setup lspconfig.

local lsp = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

lsp['tsserver'].setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- lsp['sumneko_lua'].setup {
--     capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }

lsp['pyright'].setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

lsp['vimls'].setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

lsp['bashls'].setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
