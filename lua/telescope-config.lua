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
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        -- layout_defaults = {horizontal = {mirror = false}, vertical = {mirror = false}},
        -- file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_sorter = require'telescope.sorters'.get_fzy_sorter,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        layout_config = {prompt_position = "bottom", width = 0.70, preview_cutoff = 120},
        -- shorten_path = true,
        winblend = 0,
        -- width = 0.75,
        -- preview_cutoff = 120,
        -- results_h
        -- ight = 1,
        -- results_width = 0.8,
        border = {},
        borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
        color_devicons = true,
        use_less = true,
        set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

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
        local opts = {} -- define here if you want to define something
        local ok = pcall(require'telescope.builtin'.git_files, opts)
        if not ok then require'telescope.builtin'.find_files(opts) end
    end

}

return M