-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "nightfox"
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 16.0

-- and finally, return the configuration to wezterm
return config
