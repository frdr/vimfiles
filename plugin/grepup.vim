" Mappings to make :grep more convenient
if exists('g:loaded_grepup')
    finish
endif
let g:loaded_grepup=1

if &grepprg =~ 'findstr'
    " Just some lame old mappings for Windows
    nnoremap <Leader>g :grep <C-R><C-W><CR>
    nnoremap <Leader>G :grep <C-R><C-A><CR>
    xnoremap <Leader>g y:<C-U>grep <C-R>"<CR>

    finish
endif

" Does not work if 'grepprg' contains the $* placeholder
set grepprg=grep\ -nIH

" *Instant grep* improvement by romainl {{{
" From https://gist.github.com/romainl/56f0c28ef953ffc157f36cc495947ab3
function Grep(...)
    return system(join([&grepprg] + [expandcmd(join(a:000, ' '))], ' '))
endfunction

command -nargs=+ -complete=file_in_path -bar  Grep cexpr Grep(<f-args>)
command -nargs=+ -complete=file_in_path -bar LGrep lexpr Grep(<f-args>)

cnoreabbrev <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep') ? 'Grep' : 'grep'
cnoreabbrev <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'
" }}}

" Quickly trigger recursive grep
" We can't use <Cmd> mappings because that prevents <C-R><C-W> etc.
nnoremap <Leader>g :Grep -r <C-R><C-W> %:h<CR>
nnoremap <Leader>G :Grep -r '<C-R><C-A>' %:h<CR>
xnoremap <Leader>g y:<C-U>Grep -r '<C-R>"' %:h<CR>
