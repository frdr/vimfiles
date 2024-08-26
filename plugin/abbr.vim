if exists('g:loaded_abbr')
    finish
endif
let g:loaded_abbr=1

iabbrev <expr> @tday@ strftime("%Y-%m-%d")
iabbrev <expr> @me@ system('git config user.name')->trim() .. 
            \ ' <' .. system('git config user.email')->trim() .. '>'
