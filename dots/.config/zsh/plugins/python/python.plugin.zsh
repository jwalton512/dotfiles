if (( $+commands[pyenv] )); then
    export PYENV_ROOT=$(pyenv root)
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi