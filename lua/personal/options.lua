local g = vim.g
local o = vim.opt
local wo = vim.wo
local bo = vim.bo

g.nowrap = true
g.noswapfile = true  
g.nobackup = true
g.nowritebackup = true         

o.path:append {"**"}
o.showmatch = true
o.visualbell = true
o.signcolumn = "yes:2"

o.hlsearch = true
o.smartcase = true
o.ignorecase = true
o.incsearch = true

o.expandtab = true	
o.shiftwidth = 2
o.smartindent = true	
o.smarttab = true	
o.softtabstop = 2

o.scrolloff = 4

-- set colorcolumn=80

o.cmdheight = 1
o.cursorline = true            
o.encoding = "utf-8"
o.fileencoding = "utf-8"    
o.formatoptions:remove {"cro"}
o.hidden = true                
o.iskeyword:append {"-"}
o.laststatus = 0
-- set pumheight=10          
o.ruler = true                 
o.showtabline = 2
o.timeoutlen = 500        
o.updatetime = 300        
o.foldmethod = "manual"

o.splitbelow = true
o.splitright = true

o.clipboard = "unnamedplus"

o.mouse="a"

o.number = true
o.relativenumber = true
