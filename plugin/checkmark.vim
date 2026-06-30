" Add a check mark or check an existing one
if exists('g:loaded_checkmark')
    finish
endif
let g:loaded_checkmark=1

function CheckMark() abort
    silent .global/\m\[ \]/substitute/\m\[ \]/[X]/
    silent .global!/\m\[\w\]/substitute/\m^/[ ] /
endfunction

nnoremap <Leader>c <Cmd>call CheckMark()<CR>
nnoremap <Leader>C <Cmd>call CheckMark()<bar>call CheckMark()<CR>
xnoremap <Leader>c :call CheckMark()<CR>
xnoremap <Leader>C :call CheckMark()<CR>:'<,'>call CheckMark()<CR>
