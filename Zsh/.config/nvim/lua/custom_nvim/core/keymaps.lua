vim.g.mapleader = " "

local key = vim.keymap

key.set("n", "<C-s>", ":w<CR>")
key.set("n", "<C-w>", ":so %<CR>", { silent = true })
key.set("n", "<C-q>", ":q<CR>")
key.set("n", "<C-z>", ":qall!<CR>")
key.set("n", "<C-x>", ":q!<CR>")
key.set("n", "<leader>X", ":qa!<CR>")
key.set("n", "<leader>sx", ":close<CR>")
key.set("n", "<F8>", ":nohl<CR>", { silent = true })

key.set("n", "<leader>sh", ":split<CR>")
key.set("n", "<leader>sv", ":vsplit<CR>")

key.set("n", "<C-y>", "<cmd>Yapf<CR>")
key.set("n", "<leader>Y", ":Yapf<cr>")

key.set("n", "<C-t>", ":tabnew<CR>")
key.set("n", "<leader>x", ":tabclose<CR>")
key.set("n", "<C-]>", ":tabn<CR>")
key.set("n", "<F1>", ":NvimTreeToggle<CR>", { silent = true })

key.set("n", "<F9>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<F10>", "<cmd>Telescope oldfiles<cr>") -- list open buffers in current neovim instance
key.set("n", "<F11>", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<F12>", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

key.set('n', '<leader>d', vim.diagnostic.open_float)
key.set('n', '<leader>q', vim.diagnostic.setloclist)
