" Pretty list options and a key binding for quick toggling.
" Friedrich C. Kischkel <friedrich.kischkel@gmail.com>
if exists('g:loaded_list')
    finish
endif
let g:loaded_list=1

" pure ASCII fallback
"set listchars=eol:$,tab:<->,space:.,trail:.,extends:>,precedes:<,nbsp:_

set listchars=eol:⏎,tab:├─┤,space:·,trail:•,extends:→,precedes:←,nbsp:⎵

nnoremap <Leader>l <Cmd>set list!<CR>
