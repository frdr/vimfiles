set nocompatible

let mapleader=","

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-toggle-wrap'
Plug 'dense-analysis/ale', {'tag': '*'}
Plug 'tell-k/vim-autopep8', {'tag': '*'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-afterimage'
Plug 'vim-scripts/scratch.vim', {'tag': '*'}
Plug 'frdr/vim-xdg-templates'
call plug#end()

colorscheme slate

set encoding=utf-8
set mouse=a
set title
set confirm
set linebreak
set cursorline
set scrolloff=3
set modeline
set expandtab
set shiftwidth=4
set tabstop=4
set colorcolumn=80

set relativenumber
set number
set smartcase

set hlsearch

set autochdir

" some mappings
nnoremap <leader>t <C-]>
noremap <C-L> <cmd>nohlsearch<bar>cclose<bar><C-L><CR>

set dictionary+=/usr/share/dict/words
"set thesaurus+=/usr/share/myspell/dicts/th_en_US_v2.dat
set spell spelllang=en_us,de
set undofile
set undodir=~/.vim/tmp/undo
