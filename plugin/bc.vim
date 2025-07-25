if exists('g:loaded_bc')
    finish
endif
let g:loaded_bc=1

if executable('bc')
    nnoremap <Leader>bc <cmd>.!bc -l<CR>
    vnoremap <Leader>bc :!bc -l<CR>
endif
