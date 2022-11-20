local opt = vim.opt
local glob = vim.global

opt.mouse = "a"
opt.wrap = false
opt.number = true 
opt.relativenumber = true
opt.syntax = "on"
opt.tabstop = 4
opt.softtabstop = 4
opt.textwidth = 79
opt.shiftwidth = 4
opt.expandtab = true
opt.hlsearch = true
opt.showmatch = true
opt.clipboard:append("unnamedplus")
opt.iskeyword:append("-")
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.cursorcolumn = true
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"

-- glob.loaded_perl_provider = false
-- glob.loaded_ruby_provider = false
-- glob.loaded_node_provider = false
