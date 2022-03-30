local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

local lspkind = require 'lspkind'

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'buffer', keyword_length = 4 },
  },

  formatting = {
    format = lspkind.cmp_format {
      -- mode = 'symbol',
      -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
      mode = 'symbol_text',

      with_text = true,
      maxwidth = 50,
      menu = {
        buffer = '[Buf]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[Api]',
        path = '[Path]',
        luasnip = '[Snip]',
      },
    },
  },
  view = {
    -- entries = "custom" -- can be "custom", "wildmenu" or "native"
    entries = 'custom',
  },
  experimental = {
    ghost_text = true,
  },
}

-- Set configuration for specific filetype.

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  }),
})

-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--   capabilities = capabilities
-- }
