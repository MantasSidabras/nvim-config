-- local g = vim.g -- global
-- local o = vim.opt
-- local wo = vim.wo -- window
-- local bo = vim.bo -- buffer

vim.g.noswapfile = true
vim.g.nobackup = true
vim.g.nowritebackup = true
-- g.laststatus = 2

vim.wo.wrap = false
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 10

-- TODO: fix
-- vim.o.path:append({ "**" })
vim.o.showmatch = true
vim.o.visualbell = true
vim.o.signcolumn = "yes:2"

vim.o.hlsearch = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.incsearch = true

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.softtabstop = 4

vim.o.scrolloff = 4

vim.o.cmdheight = 1
vim.o.cursorline = true
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
-- TODO: fix
-- vim.o.formatoptions:remove({ "cro" }) -- Stop newline continution of comments
vim.o.hidden = true
vim.o.autoread = true
vim.o.autowrite = true
-- TODO: fix
-- vim.o.iskeyword:append({ "-" })
-- o.iskeyword:remove {"_"} -- make _ as word delimeter
-- set pumheight=10
vim.o.ruler = true
vim.o.showtabline = 2
vim.o.timeoutlen = 500
vim.o.updatetime = 300

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.clipboard = "unnamedplus"

vim.o.mouse = "a"

vim.o.number = true
vim.o.relativenumber = true

