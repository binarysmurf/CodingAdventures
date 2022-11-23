local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	print("Colorscheme not installed, ballbag!")
	return
end
