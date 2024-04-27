" Indent one tab after opening parentheses
let g:pyindent_open_paren="&sw"
let g:pyindent_nested_paren="&sw"

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

if executable('python3')
    command -buffer -range=% -bar Python <line1>,<line2>terminal python3 
elseif executable('python')
    command -buffer -range=% -bar Python <line1>,<line2>terminal python 
endif
