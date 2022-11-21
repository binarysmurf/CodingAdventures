require("stevie.plugins-setup")
require("stevie.core.options")
require("stevie.core.keymaps")
require("stevie.core.colorscheme")
require("stevie.plugins.lualine")
require("stevie.plugins.comment")
require("stevie.plugins.nvim-tree")
require("stevie.plugins.Telescope")
-- require("stevie.plugins.nvim-cmp")

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({timeout=2000})
augroup END
]]


-- Setting some globals to satisfy :checkhealth

vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"
