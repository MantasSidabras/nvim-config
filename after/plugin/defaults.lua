local actions = require("telescope.actions")
require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    path_display = { "smart" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
      },
    }
  },
}
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })


vim.keymap.set('n', '<M-t>', ':Twilight<CR>', { desc = '[T]wilight' })
vim.keymap.set('n', '<M-z>', ':ZenMode<CR>:TwilightDisable<CR>', { desc = '[Z]en mode' })
vim.keymap.set('n', '<leader>ta', '<cmd>ToggleAlternate<cr>')

require('template-string').setup({
  filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' }, -- filetypes where the plugin is active
  jsx_brackets = true, -- must add brackets to jsx attributes
  remove_template_string = true, -- remove backticks when there are no template string
  restore_quotes = {
    -- quotes used when "remove_template_string" option is enabled
    normal = [[']],
    jsx = [["]],
  },
})


vim.keymap.set('n', '<leader>ik', '<cmd>:InspectTwoslashQueries<cr>', { desc = '[I]nspect twoslash queries' })
vim.keymap.set('n', '<leader>id', '<cmd>:RemoveTwoslashQueries<cr>', { desc = '[I]nspect [D]elete twoslash queries' })
