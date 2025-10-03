" Mappings for ALE
if exists('g:loaded_ale_mappings')
    finish
endif
let g:loaded_ale_mappings=1

" LSP mappings as used by Neovim {{{
nnoremap grt <Plug>(ale_go_to_type_definition)
nnoremap gri <Plug>(ale_go_to_implementation)
nnoremap grr <Cmd>ALEFindReferences -quickfix<Bar>cwindow<CR>
nnoremap gra <Cmd>ALECodeAction<CR>
xnoremap gra <Cmd>ALECodeAction<CR>
nnoremap grn <Cmd>ALERename<CR>
" }}}

nnoremap <Leader>f <Plug>(ale_fix)
