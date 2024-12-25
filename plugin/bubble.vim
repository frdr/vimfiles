if exists('g:loaded_bubble')
    finish
endif
let g:loaded_bubble=1

nnoremap <C-j> <cmd>.move+1<bar>normal ==<CR>
nnoremap <C-k> <cmd>.move-2<bar>normal ==<CR>
vnoremap <C-j> :move'>+1<bar>normal gv=gv<CR>
vnoremap <C-k> :move'<-2<bar>normal gv=gv<CR>
