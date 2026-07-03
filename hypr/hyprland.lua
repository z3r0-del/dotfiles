--------------------------
---- Load Config Files ----
---------------------------

require("autostart")
require("monitors")
require("look")
require("input")
require("binds")

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show run"
local browser = "brave"

-- Export Globally
_G.terminal = terminal
_G.fileManager = fileManager
_G.menu = menu
_G.browser = browser

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful
local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

-- suppressMaximizeRule:set_enabled(false)
hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- SwayNC fix
hl.layer_rule({
	match = { namespace = "swaync-control-center" },
	blur = true,
	ignore_alpha = 0.0,
})

hl.layer_rule({
	match = { namespace = "swaync-notification-center" },
	blur = true,
	ignore_alpha = 0.0,
})
