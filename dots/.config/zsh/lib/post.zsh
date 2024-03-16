# antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

# Initialize aliases
[[ -r ${ZDOTDIR:-$HOME}/.zaliases ]] && source ${ZDOTDIR:-$HOME}/.zaliases

# Set the list of directories that Zsh searches for programs.
path=(
    $HOME/.local/bin(N)
    ./vendor/bin(N)
    
    $path
)