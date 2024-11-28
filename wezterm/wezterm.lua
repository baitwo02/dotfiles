-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- config.color_scheme = 'AdventureTime'
config.window_background_opacity = 0.6
config.font = wezterm.font 'Hack Nerd Font Mono'
config.font_size = 14
config.min_scroll_bar_height = "50px"
config.scroll_to_bottom_on_input = true
config.alternate_buffer_wheel_scroll_speed = 1

-- and finally, return the configuration to wezterm
return config
