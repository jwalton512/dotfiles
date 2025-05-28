# Initialize aliases
[[ -r ${ZDOTDIR:-$HOME}/.zaliases ]] && source ${ZDOTDIR:-$HOME}/.zaliases

# Set the list of directories that Zsh searches for programs.
path=(
    $HOME/.local/bin(N)
	$HOME/.composer/vendor/bin(N)
    "./vendor/bin"
    
    $path
)
