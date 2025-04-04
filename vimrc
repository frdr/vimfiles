set nocompatible

let mapleader="ä"
let b:vimdir=fnamemodify(expand('$MYVIMRC'), ':p:h')
let b:tmpdir=$TEMP ?? '/tmp'

" Optional dist plugins {{{
packadd! matchit
packadd! editorconfig
packadd comment
" }}}

source $VIMRUNTIME/defaults.vim

" External plugins {{{
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-toggle-wrap'
Plug 'dense-analysis/ale', {'tag': '*'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-afterimage'
Plug 'vim-scripts/scratch.vim', {'tag': '*'}
Plug 'frdr/vim-xdg-templates', {'tag': '*'}
call plug#end()
" }}}

set mouse=a
set title
set confirm
set cursorline
set scrolloff=3
set modeline
set ruler
set wildmenu
set diffopt+=vertical

set relativenumber
set number
set ignorecase
set smartcase

set hlsearch
set incsearch

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
" }}}

set dictionary+=/usr/share/dict/words
"set thesaurus+=/usr/share/myspell/dicts/th_en_US_v2.dat
set spell spelllang=en_us,de

let &directory='.,' .. b:vimdir .. '/tmp/swap'
set undofile
let &undodir=b:vimdir .. '/tmp/undo,.,' .. b:tmpdir
set backup
let &backupdir=b:vimdir .. '/tmp/bak/,' .. b:tmpdir

" colors and highlights {{{
augroup colorscheme_hacking
    autocmd!
	autocmd ColorScheme wildcharm highlight SpellBad cterm=underline ctermbg=NONE ctermfg=NONE ctermul=red
	autocmd ColorScheme wildcharm highlight SpellLocal cterm=underline ctermbg=NONE ctermfg=NONE ctermul=cyan
	autocmd ColorScheme wildcharm highlight SpellRare cterm=underline ctermbg=NONE ctermfg=NONE ctermul=white
augroup END
colorscheme wildcharm
" }}}
