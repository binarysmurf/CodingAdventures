vim.g.mapleader = " "

local key = vim.keymap

key.set("n", "<C-s>", ":w<CR>")
key.set("n", "<C-q>", ":q<CR>")
key.set("n", "<C-z>", ":qall!<CR>")
key.set("n", "<C-x>", ":q!<CR>")
key.set("n", "<leader>X", ":qa!<CR>")
key.set("n", "<leader>h", ":nohl<CR>")
key.set("n", "<leader>se", "<C-w>=")
key.set("n", "<leader>sx", ":close<CR>")

key.set("n", "<C-t>", ":tabnew<CR>")
key.set("n", "<leader>x", ":tabclose<CR>")
key.set("n", "<C-]>", ":tabn<CR>")
key.set("n", "<leader>f", ":NvimTreeToggle<CR>")

key.set("n", "<leader>tn", "<cmd>FloatermNew<cr>")
key.set("n", "<leader>tt", "<cmd>FloatermToggle<cr>")

key.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
