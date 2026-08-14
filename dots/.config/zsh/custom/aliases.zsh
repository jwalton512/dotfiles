# dotfiles
alias df='cd "$DOTFILES"'
alias dfe='cd "$DOTFILES" && ${VISUAL:-${EDITOR:-nvim}} .'

# git
alias gs='gst'

# ssh
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '🔑 Public key copied to clipboard.'"

# zellij
alias zj='zellij'
alias zjd='zellij delete-session'
alias zjda='zellij delete-all-sessions'
alias zjl='zellij list-sessions'
alias zjk='zellij kill-session'
alias zjka='zellij kill-all-sessions'
