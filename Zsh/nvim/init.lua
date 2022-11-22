require("lsp_lines")
require("impatient")
require("stevie.plugins-setup")
require("stevie.core.options")
require("stevie.core.keymaps")
require("stevie.core.colorscheme")
require("stevie.plugins.comment")
require("stevie.plugins.nvim-tree")
require("stevie.plugins.lualine")
require("stevie.plugins.telescope")
require("stevie.plugins.nvim-cmp")
require("stevie.plugins.lsp.mason")
require("stevie.plugins.lsp.lspsaga")
require("stevie.plugins.lsp.lspconfig")
require("stevie.plugins.lsp.null-ls")
require("stevie.plugins.autopairs")
require("stevie.plugins.treesitter")
require("stevie.plugins.gitsigns")

-- Added by stevie
-- turns on highlight_yank, thereby saving a plugin installation

vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({timeout=2000})
augroup END
]])

-- Setting some globals to satisfy :checkhealth

vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"
vim.g.plist_display_format = "xml"
vim.diagnostic.config({
	virtual_text = false,
})
