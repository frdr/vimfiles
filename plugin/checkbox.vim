" Add a check box or check an existing one
if exists('g:loaded_checkbox')
    finish
endif
let g:loaded_checkbox=1

function CheckBox() abort
    silent .global/\m\[\s\]/substitute/\m\[ \]/[X]/
    silent .global!/\m\[\w\]/substitute/\m^/[ ] /
endfunction

nnoremap <Leader>c <Cmd>call CheckBox()<CR>
nnoremap <Leader>C <Cmd>substitute/\m\[\w\]/[ ]/<CR>
xnoremap :c :call CheckBox()<CR>
nnoremap <Leader>C :substitute/\m\[\w\]/[ ]/<CR>
