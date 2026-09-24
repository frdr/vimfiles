nnoremap <Leader>s :find %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

setlocal path+=./include
setlocal path+=../include
setlocal path+=/usr/include
