set mouse=a
set number
set relativenumber
set syntax
set tabstop=4
set softtabstop=4
set textwidth=79
set shiftwidth=4
set expandtab
set hlsearch
set showmatch
set clipboard=unnamedplus
set autoindent
set noswapfile
set backupdir=~/.cache/nvim
set ignorecase
set smartcase
set cursorcolumn
set cursorline
set splitright
set splitbelow

set termguicolors
colorscheme darkblue

:map <C-s> :w<CR>
:map <C-q> :q<CR>
:map <C-H> :nohl<CR>
:map <C-v> :vsplit<CR>
:map <C-h> :split<CR>

call plug#begin('~/.config/nvim/plugz')
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'frazrepo/vim-rainbow'
call plug#end()

let g:lightline = { 'colorscheme': 'Tomorrow_Night_Blue'}
let g:rainbow_active = 1
