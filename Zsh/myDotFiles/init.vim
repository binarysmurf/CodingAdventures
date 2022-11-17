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
:highlight Cursorline cterm=bold ctermbg=black
:highlight CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold
if !has('gui_running')
        set t_Co=256
endif
set termguicolors
colorscheme darkblue
:map <C-s> :w<CR>
:map <C-q> :q<CR>
:map <C-h> :nohl<CR>
:map <C-H> :hl<CR>

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
call plug#end()
let g:lightline = { 'colorscheme': 'nord'}
