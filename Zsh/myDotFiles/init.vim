
" Various Neovim settings

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

" Kep mappings

:map <C-s> :w<CR>
:map <C-q> :q<CR>
:map <C-x> :q!<CR>
:map <C-H> :nohl<CR>
:map <C-v> :vsplit<CR>
:map <C-h> :split<CR>

" Plug-ins
 
call plug#begin('~/.config/nvim/plugz')

" Purely cosmetic

    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'
    Plug 'sam4llis/nvim-tundra' " vim-plug
    
" Actually useful

    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    Plug 'sbdchd/neoformat'
    Plug 'machakann/vim-highlightedyank'

call plug#end()

colorscheme tundra

let g:lightline = { 'colorscheme': 'onedark'}
let g:rainbow_active = 1
let g:deoplete#enable_at_startup = 1
let g:highlightedyank_highlight_duration = 1800

" Below should be fucking superfluous

let g:loaded_perl_provider = 0
let g:loaded_node_provider = 0
let g:loaded_ruby_provider = 0
