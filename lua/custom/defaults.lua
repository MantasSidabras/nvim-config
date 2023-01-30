vim.keymap.set('n', '<C-M-t>', ':Twilight<CR>', { desc = '[T]wilight' })
vim.keymap.set('n', '<C-M-z>', ':ZenMode<CR>:TwilightDisable<CR>', { desc = '[Z]en mode' })
vim.keymap.set('n', '<leader>ta', '<cmd>ToggleAlternate<cr>')
vim.keymap.set('n', '<C-M-a>', '<cmd>CellularAutomaton make_it_rain<cr>')

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
vim.keymap.set('n', '<leader>f.', '<cmd>Telescope find_files hidden=true<CR>', { desc = '[T]elescope Hidden' })
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').resume, { desc = '[T]elescope [R]esume' })
vim.keymap.set('n', '<leader>ft', '<cmd>Telescope<CR>', { desc = '[F]ind [T]elescope' })
