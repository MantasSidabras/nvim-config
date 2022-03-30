return {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim", "hs", "spoon" } },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}
