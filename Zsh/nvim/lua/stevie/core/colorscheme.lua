local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
    print("Colorscheme not installed, ballbag!")
    return
end
