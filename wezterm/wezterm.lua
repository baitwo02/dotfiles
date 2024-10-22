-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'AdventureTime'
config.window_background_opacity = 0.7
config.font = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 14

-- and finally, return the configuration to wezterm
return config
