-- require("tokyonight").setup({
--      comments = { italic = true },
--      keywords = { italic = true },
--      lualine_bold = true,
--  })
--
local status, _ = pcall(vim.cmd, "colorscheme onedark") 
if not status then
	print("Colorscheme not installed, ballbag!")
	return
end

-- Set transaprency on for editor and any child/floating windows

vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
