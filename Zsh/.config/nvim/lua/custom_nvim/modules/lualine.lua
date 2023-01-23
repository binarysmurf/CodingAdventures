-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	print("Lualine plugin failed.")
	return
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		icons_enabled = true,
		theme = "nordic",
	},
    sections = {
    lualine_c = { {'filename', path = 2 } },
    },
})
