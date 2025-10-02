" LSP mappings using ALE
if exists('g:loaded_alelsp')
    finish
endif
let g:loaded_alelsp=1

nnoremap grt <Cmd>ALEGoToTypeDefinition<CR>
nnoremap gri <Cmd>ALEGoToImplementation<CR>
nnoremap grr <Cmd>ALEFindReferences<CR>
nnoremap gra <Cmd>ALECodeAction<CR>
xnoremap gra <Cmd>ALECodeAction<CR>
nnoremap grn <Cmd>ALERename<CR>
