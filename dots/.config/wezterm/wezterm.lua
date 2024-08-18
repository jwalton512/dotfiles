local wezterm = require 'wezterm'

local config = {}

config.font = wezterm.font 'MesloLGS NF'
config.font_size = 16
config.line_height = 1.2
config.color_scheme = 'Gruvbox dark, hard (base16)'
config.audible_bell = 'Disabled'
config.use_fancy_tab_bar = false
config.term = 'wezterm'

config.keys = {
	{
		key = 't',
		mods = 'CMD',
		action = wezterm.action.SpawnCommandInNewTab { cwd = wezterm.home_dir }
	},
}

return config
