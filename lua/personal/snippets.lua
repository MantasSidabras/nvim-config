local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
  --This tells LuaSnip to remember to keep around last snippet
  history = true,

  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets
  enable_autosnippets = true,

  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<-", "Error" } },
      },
    },
  },
}


-- c-k expansion key
vim.keymap.set({"i", "s" }, "c-k", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, {silent = true})

vim.keymap.set({ "i", "s" }, "c-j", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, {silent = true})

vim.keymap.set({ "i" }, "c-l", function()
  if ls.choice_active() then
    ls.choice_active(1)
  end
end, {silent = true})

vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/vim/lua/personal/snippets.lua<CR>")
-- require "personal/snippets/typescript"

