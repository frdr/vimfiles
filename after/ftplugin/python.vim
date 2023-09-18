setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent

" Naive attempt to add virtual environment to 'path'
if exists('&VIRTUAL_ENV')
    set path+=$VIRTUAL_ENV/**/site-packages
endif

" Toggle f-string
nnoremap <buffer> <Leader>f <Cmd>substitute/f\?\ze['"]/\=submatch(0) == '' ? 'f' : ''<CR>
