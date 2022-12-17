local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
	print("Colorscheme not installed, ballbag!")
	return
end
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
