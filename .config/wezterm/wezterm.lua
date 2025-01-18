-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

config.automatically_reload_config = true
config.color_scheme = "Rosé Pine (Gogh)"
config.window_background_opacity = 0.99

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

config.font_size = 12
config.cell_width = 1

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

for i = 1, 8 do
	-- CTRL+ number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CTRL",
		action = act.ActivateTab(i - 1),
	})
	-- F1 through F8 to activate that tab
	table.insert(config.keys, {
		key = "F" .. tostring(i),
		action = act.ActivateTab(i - 1),
	})
end

config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 240

return config
