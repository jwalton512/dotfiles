# Load aliases from alias.zsh files within .dotfiles directory
typeset -U alias_files
alias_files=($DOTFILES/**/alias.zsh)

for file in $alias_files
do
    source $file
done

unset alias_files
