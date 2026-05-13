local wezterm = require("wezterm")
local config = wezterm.config_builder()

--Font settings
config.font_size = 13
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Colors
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}

-- Apperence
config.color_scheme = "Tokyo Night"
if os.getenv('NIRI_SOCKET') ~= nil then
    config.window_decorations = "RESIZE"
end
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
}

config.max_fps = 120

-- Window transparency
config.enable_wayland = true
config.window_background_opacity = 0.85

config.front_end = 'OpenGL'
return config
