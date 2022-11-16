--debugging

local ok, dap = pcall(require, "dap")
if not ok then return end

require'telescope'.extensions.dap.configurations()

vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dj", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>dh", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
-- vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")

require("nvim-dap-virtual-text").setup()
require('dap-python').setup()
require("dapui").setup()


local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.keymap.set("n", "<leader>dm", ":lua require'dapui'.toggle()<CR>")

require("dap-vscode-js").setup({
  -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation. 
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
})

dap.adapters.chrome = {
    type = "executable",                                                                                                                                      
    command = "node",    
    args = {os.getenv("HOME") .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js', '45635'}
}
dap.adapters.node2 = {
    type = "executable",                                                                                                                                      
    command = "node",    
    args = {os.getenv("HOME") .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js', '45635'}
}

dap.adapters.python = {
  type = 'executable';
  command = 'path/to/virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

dap.configurations.typescript = {    
    -- {    
    --     type = "chrome",    
    --     request = "attach",    
    --     program = "${file}",   
    --     debugServer = 45635,
    --     cwd = vim.fn.getcwd(),    
    --     sourceMaps = true,    
    --     protocol = "inspector",    
    --     port = 9222,    
    --     webRoot = "${workspaceFolder}"    
    -- },
    -- {
    --     type = "node2",
    --     request = "launch",
    --     name = "Launch typescript",
    --     cwd = "${workspaceFolder}",
    --     args = {'${workspaceFolder}/src/main.ts'},
    --     runtimeArgs=  {"--nolazy", "-r", "ts-node/register", "-r", "tsconfig-paths/register"},
    --     sourceMaps =  true,
    --     envFile =  "${workspaceFolder}/.env",
    --     cwd =  "${workspaceRoot}",
    --     console =  "integratedTerminal",
    --     protocol =  "inspector"
    -- },
    {
        -- host = "127.0.0.1",
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        processId = require'dap.utils'.pick_process,
        cwd = "${workspaceFolder}",
    },
    -- {
    --     name = "launch file",
    --     type = "chrome",
    --     request = "attach",
    --     program = "${file}",
    --     cwd = vim.fn.getcwd(),
    --     sourceMaps = true,
    --     protocol = "inspector",
    --     port = 9222,
    --     webRoot = "${workspaceFolder}"
    -- }
}

dap.configurations.javascript = {
    {
        type = "pwa-node",
        request = "launch",
        name = "Launch file lol",
        program = "${file}",
        cwd = "${workspaceFolder}",
    },
    {
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        processId = require'dap.utils'.pick_process,
        cwd = "${workspaceFolder}",
    }
  -- {
  --   name = 'Launch',
  --   type = 'node2',
  --   request = 'launch',
  --   program = '${file}',
  --   cwd = vim.fn.getcwd(),
  --   sourceMaps = true,
  --   protocol = 'inspector',
  --   console = 'integratedTerminal',
  -- },
  -- {
  --   -- For this to work you need to make sure the node process is started with the `--inspect` flag.
  --   name = 'Attach to process',
  --   type = 'node2',
  --   request = 'attach',
  --   processId = require'dap.utils'.pick_process,
  -- },
}
