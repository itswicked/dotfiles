-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.color_scheme = "Rosé Pine (Gogh)"
config.background = {
	{
		source = {
			File = "/home/wicked/Pictures/Wallpapers/wallpaperflare.com_wallpaper.jpg",
		},
		hsb = { brightness = 0.01 },
	},
}

config.font = wezterm.font_with_fallback({
	{
		family = "JetBrains Mono",
		weight = "Regular",
		italic = false,
	},
})

-- Disable all italic fonts
config.font_rules = {
	{
		italic = true,
		font = wezterm.font_with_fallback({
			{
				family = "JetBrains Mono",
				weight = "Regular",
				italic = false,
			},
		}),
	},
	{
		intensity = "Half",
		italic = true,
		font = wezterm.font_with_fallback({
			{
				family = "JetBrains Mono",
				weight = "Medium",
				italic = false,
			},
		}),
	},
}

config.font_size = 10.5

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "v",
		mods = "CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 240

return config
