-- require("bluloco").setup({
--   style = "dark",              -- "auto" | "dark" | "light"
--   transparent = true,
--   italics = true,
--   terminal = vim.fn.has("gui_running") == 1 -- bluoco colors are enabled in gui terminals per default.
-- })
--
local status, _ = pcall(vim.cmd, "colorscheme moonfly")
if not status then
	print("Colorscheme not installed, ballbag!")
	return
end

-- Set transaprency on for editor and any child/floating windows

-- vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
