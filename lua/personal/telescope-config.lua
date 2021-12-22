local actions = require('telescope.actions')

local previewers = require('telescope.previewers')
local Job = require('plenary.job')

local new_maker = function(filepath, bufnr, opts)
    filepath = vim.fn.expand(filepath)
    Job:new({
        command = 'file',
        args = {'--mime-type', '-b', filepath},
        on_exit = function(j)
            local mime_type = vim.split(j:result()[1], '/')[1]
            if mime_type == "text" then
                previewers.buffer_previewer_maker(filepath, bufnr, opts)
            else
                -- maybe we want to write something to the buffer here
                vim.schedule(function()
                    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {'BINARY'})
                end)
            end
        end
    }):sync()
end

require('telescope').setup {
    defaults = {
        find_command = {
            'rg', '--no-heading', '--with-filename', '--line-number', '--column',
            '--smart-case'
        },
        file_sorter = require'telescope.sorters'.get_fzy_sorter,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = { truncate = 2 },
        layout_config = {
          prompt_position = "bottom",
          width = 0.50,
          preview_cutoff = 120, 
          horizontal = {width = 0.9}
        },
        color_devicons = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = new_maker,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                -- To disable a keymap, put [map] = false
                -- So, to not map "<C-n>", just put
                -- ["<c-x>"] = false,
                ["<esc>"] = actions.close,

                -- Otherwise, just set the mapping to the function that you want it to be.
                -- ["<C-i>"] = actions.select_horizontal,

                -- Add up multiple actions
                ["<CR>"] = actions.select_default + actions.center

                -- You can perform as many actions in a row as you like
                -- ["<CR>"] = actions.select_default + actions.center + my_cool_custom_action,
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
                -- ["<C-i>"] = my_cool_custom_action,
            }
        }
    },
    extensions = {
        fzy_native = {override_generic_sorter = false, override_file_sorter = true}
    }
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('coc')

local M = {
    search_vimfiles = function()
        require('telescope.builtin').find_files({
            prompt_title = '< VimRC >',
            cwd = '~/.config/nvim/'
        })
    end,

    git_branches = function()
        require('telescope.builtin').git_branches({
            attach_mappings = function(_, map)
                map('i', 'C-d', actions.git_delete_branch)
                map('n', 'C-d', actions.git_delete_branch)
            end
        })
    end,

    project_files = function()
        local opts = { 
          layout_strategy = 'horizontal', 
          layout_config = {
                horizontal = {width = 0.99, height = 0.9},
          }, 
        } -- define here if you want to define something
        local ok = pcall(require'telescope.builtin'.git_files, opts)
        if not ok then require'telescope.builtin'.find_files(opts) end
    end,

    curr_buffer = function()
        require('telescope.builtin').current_buffer_fuzzy_find({
            layout_strategy = 'horizontal',
            layout_config = {
                prompt_position = 'top',
                horizontal = {width = 0.99, height = 20}
            },
            sorting_strategy = 'ascending'
        })
    end
}
return M
