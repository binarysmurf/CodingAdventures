vim.g.mapleader = " "

local key = vim.keymap

key.set("n","<C-s>",":w<CR>")
key.set("n","<C-q>",":q<CR>")
key.set("n","<leader>x",":q!<CR>")
key.set("n","<leader>nh",":nohl<CR>")
key.set("n","<leader>sv","<C-w>v")
key.set("n","<leader>sh","<C-w>s")
key.set("n","<leader>se","<C-w>=")
key.set("n","<leader>sx",":close<CR>")

key.set("n","<leader>to",":tabnew<CR>")
key.set("n","<leader>tx",":tabclose<CR>")
key.set("n","<leader>tn",":tabn<CR>")
key.set("n","<leader>tp",":tabp<CR>")
key.set("n","<leader>f",":NvimTreeToggle<CR>")

key.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags


key.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
