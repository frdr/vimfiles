set nocompatible

source  /usr/share/vim/vimfiles/archlinux.vim

syntax on
filetype plugin indent on

colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

set expandtab
set shiftwidth=4
set tabstop=4

set colorcolumn=80

set relativenumber
set number
set ruler
set scrolloff=3

set smartcase

set incsearch
set hlsearch

set autochdir

set mouse=a

setlocal spell spelllang=en_us
set undofile
set undodir=~/.vim/tmp/undo

