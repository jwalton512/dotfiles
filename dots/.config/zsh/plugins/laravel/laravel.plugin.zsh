fpath=(${0:A:h}/functions $fpath)
autoload -U $fpath[1]/*(.:t)

alias art="php artisan"
alias sart="sail artisan"