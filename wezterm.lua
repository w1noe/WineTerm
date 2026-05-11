local wezterm = require("wezterm")
local commands = require("commands")
local config = wezterm.config_builder()

--Font settings
config.font_size = 13
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Colors
config.colors = {
    cursor_bg = "white",
    cursor_border = "white"
}

-- Apperence
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
}

config.max_fps = 120

-- Custom commands
wezterm.on("augment-command-palette", function ()
    return commands
end)

return config
