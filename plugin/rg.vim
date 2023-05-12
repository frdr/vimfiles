" Stolen from https://github.com/benknoble/Dotfiles/blob/c6f2912e8ca025a5ec44dcc519d0cdcfba6c96fd/links/vim/plugin/rg.vim#L9
if exists('g:loaded_rg')
    finish
endif
let g:loaded_rg=1

if executable('rg')
    let &grepprg='rg --vimgrep'
    let &grepformat='%f:%l:%c:%m,%f:%l:%m'
endif
