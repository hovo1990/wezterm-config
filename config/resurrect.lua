local wezterm = require("wezterm")
wezterm.log_info("The config was reloaded for this window!")

local is_windows = wezterm.target_triple == "x86_64-pc-windows-msvc"


local config_stuff = {
	enable_kitty_keyboard = true,
	default_workspace = "~Main~",
	warn_about_missing_glyphs = false,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	hide_tab_bar_if_only_one_tab = true,
	hide_mouse_cursor_when_typing = false,
	inactive_pane_hsb = {
		brightness = 0.9,
	},
	scrollback_lines = 5000,
	audible_bell = "Disabled",
	enable_scroll_bar = true,

	status_update_interval = 1000,
	xcursor_theme = "Adwaita", -- fix cursor bug on gnome + wayland

	max_fps = 120,
	-- front_end = "WebGpu",
	webgpu_power_preference = "HighPerformance",
	disable_default_key_bindings = true,
}


return config_stuff