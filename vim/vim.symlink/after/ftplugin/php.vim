setlocal matchpairs-=<:>

inoremap <Leader>u <Esc>:call phpnamespace#insert_add_use()<CR>
noremap <Leader>u :call phpnamespace#add_use()<CR>
inoremap <Leader>e <Esc>:call phpnamespace#insert_expand_class<CR>
noremap <Leader>e :call phpnamespace#expand_class()<CR>
noremap <Leader>su :call PhpSortUse()<CR>
