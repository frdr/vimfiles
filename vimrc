set nocompatible

let mapleader="ä"
let b:vimdir=fnamemodify(expand('$MYVIMRC'), ':p:h')
let b:tmpdir=$TEMP ?? '/tmp'

" Optional dist plugins {{{
packadd! matchit
packadd! editorconfig
packadd comment
" }}}

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

let g:load_doxygen_syntax=1
let g:ale_completion_enabled=1

" External plugins {{{
call plug#begin()
Plug 'mhinz/vim-signify'
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
set visualbell

set relativenumber
set number

" Search {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
" }}}

" I really don't like tabs or deep indentation {{{
set expandtab
set shiftwidth=4
set textwidth=80
" }}}

" Mappings {{{
" Make :tag more convenient on DE keyboard
noremap <leader>+ <C-]>
" Make :tag work with DE keyboard - may be intercepted by terminal
noremap <C-+> <C-]>
noremap <C-L> <Cmd>nohlsearch<Bar>cclose<CR><C-L>
" Sometimes, I forget I'm in Insert mode ...
iabbrev "*p <C-R>*
iabbrev "+p <C-R>+
" Scroll in terminal buffer
tnoremap <ScrollWheelUp> <C-W>N<ScrollWheelUp>
tnoremap <C-B> <C-W>N<C-B>
" The infamous sudo tee hack
cnoremap w!! w !sudo tee > /dev/null %
" }}}

" User commands {{{
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

" Automatically open quickfix/location list if it was changed {{
augroup autolist
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l* lwindow
augroup END
" }}}

" colors and highlights {{{
augroup colorscheme_hacking
    autocmd!
    autocmd ColorScheme wildcharm highlight SpellBad cterm=underline ctermbg=NONE ctermfg=NONE ctermul=red
                \ | highlight SpellLocal cterm=underline ctermbg=NONE ctermfg=NONE ctermul=cyan
                \ | highlight SpellRare cterm=underline ctermbg=NONE ctermfg=NONE ctermul=white
augroup END
colorscheme wildcharm
" }}}
