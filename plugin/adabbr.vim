" Some magic @-delimited abbreviations to expand to useful strings.
if exists('g:loaded_adabbr')
    finish
endif
let g:loaded_adabbr=1

if exists('*strftime')
    iabbrev <expr> @tday@ strftime('%Y-%m-%d')
    iabbrev <expr> @year@ strftime('%Y')
    iabbrev <expr> @debtime@ strftime('%a, %d %b %Y %H:%M:%S %z')
endif

if executable('git')
    " Assumes Git being configured
    iabbrev <expr> @me@ system('git config --get user.name')->trim() ..
                \ ' <' .. system('git config --get user.email')->trim() .. '>'
endif
