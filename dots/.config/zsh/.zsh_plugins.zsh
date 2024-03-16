fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/zfunctions )
source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/zfunctions/zfunctions.plugin.zsh
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure )
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k )
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/completion )
source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/completion/completion.plugin.zsh
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/directory )
source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/directory/directory.plugin.zsh
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/editor )
source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/editor/editor.plugin.zsh
if is-macos; then
  fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/homebrew )
  source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/homebrew/homebrew.plugin.zsh
fi
if is-macos; then
  fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/macos )
  source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/macos/macos.plugin.zsh
fi
fpath+=( /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/prompt )
source /Users/jason/Library/Caches/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/prompt/prompt.plugin.zsh
fpath+=( $ZSH_CUSTOM/plugins/git )
source $ZSH_CUSTOM/plugins/git/git.plugin.zsh
fpath+=( $ZSH_CUSTOM/plugins/laravel )
source $ZSH_CUSTOM/plugins/laravel/laravel.plugin.zsh
fpath+=( $ZSH_CUSTOM/plugins/python )
source $ZSH_CUSTOM/plugins/python/python.plugin.zsh
