require'nvim-tree'.setup{
  highlight_opened_files = true,
  auto_close = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  view = {
    width = 30,
    height = 30,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}

-- require'nvim-tree'.setup {
--   disable_netrw       = true,
--   hijack_netrw        = true,
--   open_on_setup       = false,
--   ignore_ft_on_setup  = {},
--   auto_close          = false,
--   open_on_tab         = false,
--   hijack_cursor       = false,
--   update_cwd          = false,
--   diagnostics         = {
--     enable = false,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     }
--   },
--   update_focused_file = {
--     enable      = false,
--     update_cwd  = false,
--     ignore_list = {}
--   },
--   system_open = {
--     cmd  = nil,
--     args = {}
--   },
--   view = {
--     width = 30,
--     height = 30,
--     side = 'left',
--     auto_resize = false,
--     mappings = {
--       custom_only = false,
--       list = {}
--     }
--   }
-- }