local wezterm = require 'wezterm'
local config = {}
wezterm.on('window-resized', function(window, pane)
    wezterm.reload_configuration()
end)
config.color_scheme = 'Catppuccin Mocha'
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font "Maple Mono"
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.adjust_window_size_when_changing_font_size = false
config.enable_scroll_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
return config
