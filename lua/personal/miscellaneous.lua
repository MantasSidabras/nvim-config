require('lualine').setup{
      options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
      },
      sections = {
        lualine_a = {'mode'},
        -- lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_diagnostic', 'coc'}} },
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
  tabline = {
      lualine_a = {'buffers'},
      -- lualine_b = {'branch'},
      -- lualine_c = {'filename'},
      -- lualine_x = {},
      -- lualine_y = {},
      -- lualine_z = {'tabs'}
  },
  extensions = { }
}
