" Slow down Github Copilot
if exists('g:loaded_slowpilot')
    finish
endif
let g:loaded_slowpilot=1

let s:shutup_time = 30 * 1000

function s:Slowpilot(forever) abort
    Copilot disable
    if ! a:forever
        call timer_start(s:shutup_time, {-> execute('Copilot enable')})
    endif
endfunction

command -bang -bar Slowpilot call <SID>Slowpilot('<bang>' == '!')
