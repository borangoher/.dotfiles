-- imports
pcall(require, "luarocks.loader")
local wibox = require("wibox")
local beautiful = require("beautiful")
local menubar = require("menubar")
local awful = require("awful")
require("awful.autofocus")
require("awful.hotkeys_popup.keys")

-- global namespace
RC = {}
RC.user_vars = require("main.user-variables")
RC.menu = require("main.menu")
RC.keyboard = require("bindings.keyboard")
RC.rules = require("main.rules")

-- error handling
require("main.error-handling")

-- user variables
beautiful.init("~/.config/awesome/theme.lua")

terminal = RC.user_vars.terminal
editor = RC.user_vars.editor
editor_cmd = RC.user_vars.editor_cmd

modkey = RC.user_vars.modkey

awful.layout.layouts = RC.user_vars.layouts

-- menu
myawesomemenu = RC.menu.myawesomemenu
mymainmenu = RC.menu.mymainmenu
mylauncher = RC.menu.mylauncher
menubar.utils.terminal = terminal

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- wibox
mytextclock = wibox.widget.textclock()
require("main.wibar")

-- mouse bindings
require("bindings.mouse")

-- keyboard bindings
globalkeys = RC.keyboard.globalkeys
clientkeys = RC.keyboard.clientkeys
clientbuttons = RC.keyboard.clientbuttons
root.keys(globalkeys)

-- rules
awful.rules.rules = RC.rules

-- signals
require("main.signals")
