" Vim plugin to start new files with XDG templates
" Last Change:	2023-11-12
" Maintainer:	Friedrich Kischkel <friedrich.kischkel@gmail.com

if exists('g:loaded_xdg_templates')
    finish
endif
let g:loaded_xdg_templates=1

augroup xdg_templates
    autocmd!
    " TODO: need to find Templates dir with `xdg-user-dir TEMPLATES`
    for s:template in expand('~/Templates/*.*')->split('\n')
        exec 'autocmd BufNewFile *.'.fnamemodify(s:template, ':e').' 0read '.s:template.' | $'
    endfor 
augroup END
