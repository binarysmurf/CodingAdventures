require("stevie.plugins-setup")
require("stevie.core.options")
require("stevie.core.keymaps")
require("stevie.core.colorscheme")
require("stevie.plugins.lualine")

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({timeout=500})
augroup END
]]
