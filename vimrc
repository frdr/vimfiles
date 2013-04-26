" general
set history=500
set mouse=a
set title
set wildmenu
set confirm
set linebreak
set showbreak=»\ \ 

nnoremap <CR> i<CR><Esc>

"" undo
set undodir=~/.vim/tmp/undo,.
set undofile

"" search optimization
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

""" search only in visual selection
vnoremap / <Esc>`</\%V
vnoremap ? <Esc>`>/\%V

" programming related
syntax enable
set colorcolumn=81
set tags=./tags,tags,~/.vim/tags/cpp4.7

"" I don't like the default doxygen highlighting
let g:load_doxygen_syntax=1
highlight clear doxygenBOther
highlight link doxygenBOther doxygenOther
highlight clear doxygenParamName
highlight link doxygenParamName doxygenParam

"" indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Leader stuff
let mapleader=','
let localmapleader='\\'
"" Leader-f to find word cursor is on
nnoremap <Leader>f :grep -Ir "\<<C-r><C-w>\>" *<CR>
"" Leader-h to hide or unhide text
inoremap <Leader>h <C-O>za
nnoremap <Leader>h za
onoremap <Leader>h <C-C>za
vnoremap <Leader>h zf
"" Leader-m to start a build. Before it can be used: 
"" set makeprg=make\ -C\ /PATH/TO/BUILD/DIR
nnoremap <Leader>m :make<CR>
"" Leader-s to switch between .cpp and .h files
nnoremap <Leader>s :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" spell checking and dictionaries
set dictionary+=/usr/share/dict/words
"set thesaurus+=/usr/share/myspell/dicts/th_en_US_v2.dat
set spell spelllang=en_us
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

