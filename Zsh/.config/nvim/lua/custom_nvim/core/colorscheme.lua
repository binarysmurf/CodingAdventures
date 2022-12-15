local status, _ = pcall(vim.cmd, "colorscheme default")
if not status then
	print("Colorscheme not installed, ballbag!")
	return
end
