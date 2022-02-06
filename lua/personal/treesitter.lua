require'nvim-treesitter.install'.compilers = { "clang" }

require'nvim-treesitter.configs'.setup {
  highlight = {enable = true}, 
  -- incremental_selection = { 
  --   enable = true,
  --   keymaps = {
  --           init_selection = "gnn",
  --           node_incremental = "grn",
  --           scope_incremental = "grc",
  --           node_decremental = "grm",
  --         }
  -- },
  rainbow = {enable = true, extended_mode = true}
}
