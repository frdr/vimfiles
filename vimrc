set nocompatible

set encoding=utf-8
set history=500
set mouse=a
set title
set wildmenu
set confirm
set linebreak
set cursorline
set number
set relativenumber
set scrolloff=3
set laststatus=2
set formatoptions+=j
set ruler
set nojoinspaces
set modeline
set nrformats=hex

syntax on
filetype plugin indent on

colorscheme solarized
if has('gui_running')
    set background=light
else
    set t_Cs=
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

set dictionary+=/usr/share/dict/words
"set thesaurus+=/usr/share/myspell/dicts/th_en_US_v2.dat
set spell spelllang=en_us,de
set undofile
set undodir=~/.vim/tmp/undo

