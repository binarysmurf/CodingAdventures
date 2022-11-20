vim.g.mapleader = " "

local key = vim.keymap

key.set("i","jk", "<ESC>")
key.set("n","<C-s>",":w<CR>")
key.set("n","<C-q>",":q<CR>")
key.set("n","<leader>x",":q!<CR>")
key.set("n","<leader>nh",":nohl<CR>")
key.set("n","<C-v>",":vsplit<CR>")
key.set("n","<C-h>",":split<CR>")
key.set("n","<leader>to",":tabnew<CR>")
key.set("n","<leader>tx",":tabclose<CR>")
key.set("n","<leader>tn",":tabn<CR>")
key.set("n","<leader>tp",":tabp<CR>")
