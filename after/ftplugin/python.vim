" Indent one tab after opening parentheses
let g:python_indent = {}
let g:python_indent.open_paren = 'shiftwidth()'
let g:python_indent.nested_paren = 'shiftwidth() * 2'
let g:python_indent.continue = 'shiftwidth()'
let g:python_indent.closed_paren_align_last_line = v:false

" Naive attempt to add virtual environment to 'path'
if exists('&VIRTUAL_ENV')
    set path+=$VIRTUAL_ENV/**/site-packages
endif

" Toggle f-string
nnoremap <buffer> <Leader>f <Cmd>substitute/f\?\ze['"]/\=submatch(0) == '' ? 'f' : ''<CR>

if executable('ipython3')
    command -buffer IPython terminal ++close ipython3
elseif executable('ipython')
    command -buffer IPython terminal ++close ipython
endif
