" Mappings starting with <leader>
if exists('g:loaded_leadermappings')
    finish
endif
let g:loaded_leadermappings=1

nnoremap <leader>g :grep <C-R><C-W><CR>
nnoremap <leader>G :grep <C-R><C-A><CR>
xnoremap <leader>g y:<C-U>grep <C-R>"<CR>
