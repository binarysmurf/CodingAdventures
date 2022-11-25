-- Added by stevie
-- load settings & plugins

require("impatient")
require("stevie.modules-setup")
require("stevie.core.options")
require("stevie.core.keymaps")
require("stevie.core.colorscheme")
require("stevie.modules.comment")
require("stevie.modules.nvim-tree")
require("stevie.modules.lualine")
require("stevie.modules.telescope")
require("stevie.modules.nvim-cmp")
require("stevie.modules.lsp.mason")
require("stevie.modules.lsp.lspsaga")
require("stevie.modules.lsp.lspconfig")
require("stevie.modules.lsp.null-ls")
require("stevie.modules.autopairs")
require("stevie.modules.treesitter")
require("stevie.modules.gitsigns")

-- I'm guessing everything below could be written in 'options.lua' instead
-- but this is working, so I shall fuck with it not.

-- turns on highlight_yank, thereby avoiding a plugin installation
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({timeout=2000})
augroup END
]])

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
vim.g.neovide_traansparency = 0.8

vim.opt.termguicolors = true
require("colorizer").setup()
