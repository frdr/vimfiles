" Some magic @-delimited abbreviations to expand to useful strings.
if exists('g:loaded_adabbr')
    finish
endif
let g:loaded_adabbr=1

if exists('*strftime')
    iabbrev <expr> @tday@ strftime('%Y-%m-%d')
    iabbrev <expr> @year@ strftime('%Y')
endif

if executable('git')
    " Assumes Git being configured
    iabbrev <expr> @me@ system('git config get user.name')->trim() .. 
                \ ' <' .. system('git config get user.email')->trim() .. '>'
endif
