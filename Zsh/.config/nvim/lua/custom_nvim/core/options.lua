local opt = vim.opt

opt.mouse = "a"
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.syntax = "on"
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.hlsearch = true
opt.incsearch = true
opt.showmatch = true
opt.clipboard:append("unnamedplus")
opt.iskeyword:append("-")
opt.autoindent = true
opt.scrolloff = 5
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.cursorcolumn = true
opt.colorcolumn = "120"
opt.splitright = true
opt.splitbelow = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.foldmethod = "indent"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99
opt.updatetime = 250
opt.termguicolors = true
opt.breakindent = true

-- Setting some globals to satisfy :checkhealth

vim.g.spelllang = "en"
vim.g.spell = 1
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"
vim.g.plist_display_format = "xml"
vim.diagnostic.config({
	virtual_text = false,
})
-- turns on highlight_yank, thereby avoiding a plugin installation
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({timeout=2000})
augroup END
]])

-- automatically format Python on save
--
vim.cmd([[autocmd BufWritePre *.py :Yapf]])
