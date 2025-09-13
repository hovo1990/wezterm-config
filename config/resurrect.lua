


local resurrectio = {

    local wezterm = require("wezterm")
    local resurrect = wezterm.plugin.require("https://github.com/MLFlexer/resurrect.wezterm")


    resurrect.state_manager.periodic_save({
        interval_seconds = 15 * 60,
        save_workspaces = true,
        save_windows = true,
        save_tabs = true,
    })

    resurrect.state_manager.set_encryption({
        enable = false,
        private_key = wezterm.home_dir .. "/.age/resurrect.txt",
        public_key = "age17yk5rw6vf4wrgwxgn69mpqemc2m7zy8taqdfgeyljqhnavl8dynszgk2s8",
    })

    wezterm.on("resurrect.error", function(err)
        wezterm.log_error("ERROR!")
        wezterm.gui.gui_windows()[1]:toast_notification("resurrect", err, nil, 3000)
    end)

}


return resurrectio