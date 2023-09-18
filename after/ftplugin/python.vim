setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

" Toggle f-string
nnoremap <buffer> <Leader>f <Cmd>substitute/f\?\ze['"]/\=submatch(0) == '' ? 'f' : ''<CR>
