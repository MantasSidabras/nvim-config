local g = vim.g -- global
local o = vim.opt
local wo = vim.wo -- window
local bo = vim.bo -- buffer

g.noswapfile = true
g.nobackup = true
g.nowritebackup = true
-- g.laststatus = 2

wo.wrap = false
wo.foldmethod = "expr"
wo.foldexpr = 'nvim_treesitter#foldexpr()'
wo.foldlevel = 10

o.path:append({ "**" })
o.showmatch = true
o.visualbell = true
o.signcolumn = "yes:2"

o.hlsearch = true
o.smartcase = true
o.ignorecase = true
o.incsearch = true

o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.smarttab = true
o.softtabstop = 4

o.scrolloff = 4

-- set colorcolumn=80

o.cmdheight = 1
o.cursorline = true
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.formatoptions:remove({ "cro" }) -- Stop newline continution of comments
o.hidden = false
o.iskeyword:append({ "-" })
-- o.iskeyword:remove {"_"} -- make _ as word delimeter
-- set pumheight=10
o.ruler = true
o.showtabline = 2
o.timeoutlen = 500
o.updatetime = 300

o.splitbelow = true
o.splitright = true

o.clipboard = "unnamedplus"

o.mouse = "a"

o.number = true
o.relativenumber = true

