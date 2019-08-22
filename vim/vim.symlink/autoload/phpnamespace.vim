function! phpnamespace#add_use() abort
    call PhpInsertUse()
endfunction

function! phpnamespace#insert_add_use() abort
    call phpnamespace#add_use()
    call feedkeys('a', 'n')
endfunction

function! phpnamespace#expand_class() abort
    call PhpExpandClass()
endfunction

function! phpnamespace#insert_expand_class() abort
    call phpnamespace#expand_class()
    call feedkeys('a', 'n')
endfunction
