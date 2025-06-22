setopt auto_cd
setopt extended_glob

# ensure paths are unique
typeset -gU cdpath fpath mailpath path prepath

# set default zsh dirs
__zsh_config_dir="${ZDOTDIR:-$HOME/.zsh}"
__zsh_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}/zsh"
__zsh_cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
for _zdir in $__zsh_data_dir $__zsh_cache_dir; do
	[[ -d "$_zdir" ]] && mkdir -p "$_zdir"
done
unset _zdir
ZSH_CUSTOM="$__zsh_config_dir/custom"
ZFUNCDIR="$ZSH_CUSTOM/functions"
ZSH_CACHE_DIR="$__zsh_cache_dir"

# load zstyles
[[ ! -f $__zsh_config_dir/.zstyles ]] || source $__zsh_config_dir/.zstyles

# get prompt theme
typeset -ga ZSH_THEME
zstyle -a ':plugin:prompt' theme ZSH_THEME ||
ZSH_THEME=(p10k pure)

# install antidote
if [[ ! -d $__zsh_config_dir/.antidote ]]; then
	git clone https://github.com/mattmc3/antidote $__zsh_config_dir/.antidote
fi

# load plugins
source $__zsh_config_dir/.antidote/antidote.zsh
antidote load
