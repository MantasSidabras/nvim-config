local ok, null_ls = pcall(require, "null-ls")
if not ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({
      extra_args = { "--single-quote", "--jsx-single-quote" },
    }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.fourmolu,
    -- formatting.yapf,
    formatting.stylua.with({
      extra_args = { "--config-path", vim.fn.expand("~/.config/nvim/lua/lsp/settings/stylua.toml") },
    }),
    diagnostics.flake8.with({
      -- extra_args = {},
    }),
  },
})
