set nocompatible

let mapleader="ä"
let b:vimdir=fnamemodify(expand('$MYVIMRC'), ':p:h')
let b:tmpdir=$TEMP ?? '/tmp'

" Optional dist plugins {{{
packadd! matchit
packadd! editorconfig
packadd comment
" }}}

" External plugins {{{
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-toggle-wrap'
Plug 'dense-analysis/ale', {'tag': '*'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-afterimage'
Plug 'vim-scripts/scratch.vim', {'tag': '*'}
Plug 'frdr/vim-xdg-templates'
call plug#end()
" }}}

colorscheme retrobox

set encoding=utf-8
set mouse=a
set title
set confirm
set cursorline
set scrolloff=3
set modeline
set colorcolumn=80
set ruler
set wildmenu
set diffopt+=vertical

" these should rather be in a ftplugin
set expandtab
set shiftwidth=4
set tabstop=4

set relativenumber
set number
set ignorecase
set smartcase

set hlsearch
set incsearch

set autochdir

" Mappings {{{
" Make :tag more convenient on DE keyboard
noremap <leader>+ <C-]>
" Make :tag work with DE keyboard - may be intercepted by terminal
noremap <C-+> <C-]>
noremap <C-L> <Cmd>nohlsearch<Bar>cclose<CR><C-L>
" }}}

" User commands {{{
" Shamelessly stolen from SO user romainl
command! RC edit $MYVIMRC
command! Today normal! i<C-R>=strftime("%Y-%m-%d")<CR>
" If the English language has a word for "current year" I don't know it
command! Heua normal! i<C-R>=strftime("%Y")<CR>
command! Run terminal %:p
" }}}

set dictionary+=/usr/share/dict/words
"set thesaurus+=/usr/share/myspell/dicts/th_en_US_v2.dat
set spell spelllang=en_us,de

let &directory='.,' .. b:vimdir .. '/tmp/swap'
set undofile
let &undodir=b:vimdir .. '/tmp/undo,.,' .. b:tmpdir
let &backupdir=b:vimdir .. '/tmp/bak,.,' .. b:tmpdir
