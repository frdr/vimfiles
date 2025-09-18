if exists('g:loaded_bc')
    finish
endif
let g:loaded_bc=1

if executable('bc')
    command -bar -range Bc <line1>,<line2>!bc -l
    nnoremap <Leader>bc :Bc<CR>
    xnoremap <Leader>bc :Bc<CR>
endif
