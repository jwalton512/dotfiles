#!/usr/bin/env zsh

# load libs
ZSH_CUSTOM=$ZDOTDIR

[[ ! -f $ZDOTDIR/lib/pre.zsh ]] || source $ZDOTDIR/lib/pre.zsh

for _zrcfile in $ZDOTDIR/lib/(*~(pre|post)*).zsh; do
    source $_zrcfile
done
unset _zrcfile

[[ ! -f $ZDOTDIR/lib/post.zsh ]] || source $ZDOTDIR/lib/post.zsh