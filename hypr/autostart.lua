-------------------
---- AUTOSTART ----
-------------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
hl.on("hyprland.start", function()
	hl.exec_cmd("sleep 1 && hyprctl reload")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("udiskie")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("swaync")
	hl.exec_cmd("sleep 1 & waybar")
	hl.exec_cmd("hypridle")
end)
