#!/bin/sh
# vim:ft=sh:noet:ts=3:sw=3:
# file:$XDG_CONFIG_HOME/cage/config.sh
#==============================================================================#


systemctl --user import-environment DISPLAY WAYLAND_DISPLAY >/dev/null 2>&1
dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY >/dev/null 2>&1
systemctl --user start cage-session.target >/dev/null 2>&1
foot
systemctl --user stop graphical-session.target >/dev/null 2>&1


#==============================================================================#
#                                 END OF FILE                                  #
#==============================================================================#
