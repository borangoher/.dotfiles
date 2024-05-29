local hotkeys_popup = require("awful.hotkeys_popup")
local awful = require("awful")
local beautiful = require("beautiful")

local _M = {
	myawesomemenu = {
		{
			"hotkeys",
			function()
				hotkeys_popup.show_help(nil, awful.screen.focused())
			end,
		},
		{ "manual", terminal .. " -e man awesome" },
		{ "edit config", editor_cmd .. " " .. awesome.conffile },
		{ "restart", awesome.restart },
		{
			"quit",
			function()
				awesome.quit()
			end,
		},
	},

	mymainmenu = {
		{ "anki", "anki" },
		{ "firefox", "firefox" },
	},

	mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = mymainmenu }),
}

return _M
