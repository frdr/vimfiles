" Some magic @-delimited abbreviations to expand to useful strings.
if exists('g:loaded_abbr')
    finish
endif
let g:loaded_abbr=1

iabbrev <expr> @tday@ strftime("%Y-%m-%d")
iabbrev <expr> @year@ strftime("%Y")

if executable('git')
    " Assumes Git being configured
    iabbrev <expr> @me@ system('git config get user.name')->trim() .. 
                \ ' <' .. system('git config get user.email')->trim() .. '>'
endif
