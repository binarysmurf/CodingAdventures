-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "yaml",
    "html",
    "css",
    "bash",
    "lua",
    "vim",
    "C",
    "Python",
  },
  -- auto install above language parsers
  auto_install = true,
})
require('nvim-treesitter.configs').setup {
  refactor = {
    -- highlight_current_scope = { enable = true },
    highlight_definitions  = { enable = true },
    clear_on_cursor_move = true,
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grn",
      },
    },
  },
}

