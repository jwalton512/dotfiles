function! s:GetBufferList()
    redir =>buflist
    silent! ls
    redir END
    return buflist
endfunction

function! ToggleQuickfixList()
    for bufnum in map(filter(split(s:GetBufferList(), '\n'), 'v:val =~ "Quickfix List"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
        if bufwinnr(bufnum) != -1
            cclose
            return
        endif
    endfor
    let winnr = winnr()
    copen
    if winnr() != winnr
        wincmd p
    endif
endfunction
