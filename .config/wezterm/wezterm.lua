-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

config.automatically_reload_config = true
config.color_scheme = "Rosé Pine (Gogh)"
config.background = {
	{
		source = {
			File = "/home/wicked/Pictures/Wallpapers/raiden-shogun-5k-5120x2880-16500.jpg",
		},
		hsb = { brightness = 0.03 },
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

--Tab suyff
config.keys = {
	{ key = "-", mods = "ALT", action = act.ActivateTabRelative(-1) },
	{ key = "=", mods = "ALT", action = act.ActivateTabRelative(1) },
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
}

config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 240

return config
