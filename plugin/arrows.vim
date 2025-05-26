if exists('g:loaded_arrows')
    finish
endif
let g:loaded_arrows=1

noremap <Up> gk
noremap <Down> gj
inoremap <Up> <C-O>gk
inoremap <Down> <C-O>gj
