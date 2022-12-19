-- load base neovim config. settings

require("custom_nvim.modules-setup")
require("custom_nvim.core.options")
require("custom_nvim.core.keymaps")
require("custom_nvim.vs_code")
require("custom_nvim.core.colorscheme")

-- load custom modules/plugins

require("impatient")
require("colorizer").setup()
require("custom_nvim.modules.comment")
require("custom_nvim.modules.nvim-tree")
require("custom_nvim.modules.lualine")
require("custom_nvim.modules.telescope")
require("custom_nvim.modules.nvim-cmp")
require("custom_nvim.modules.lsp.mason")
require("custom_nvim.modules.lsp.lspsaga")
require("custom_nvim.modules.lsp.lspconfig")
require("custom_nvim.modules.lsp.null-ls")
require("custom_nvim.modules.autopairs")
require("custom_nvim.modules.treesitter")
require("custom_nvim.modules.gitsigns")

