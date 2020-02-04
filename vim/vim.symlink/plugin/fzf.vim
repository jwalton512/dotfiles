command! -bang -nargs=* AllFiles
    \ call fzf#vim#files('',
    \     fzf#vim#with_preview({
    \         'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"'
    \     })
    \ )
