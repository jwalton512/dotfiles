# press Alt+. to insert the last word from the previous command
bindkey '^[.' insert-last-word
autoload smart-insert-last-word
zle -N insert-last-word smart-insert-last-word
