#!/bin/bash
#
#  ubuntu-tailscale-launcher
#  Another (unofficial) Ubuntu Tailscale VPN launcher.
#
#  Copyright 2026, Marc S. Brooks (https://mbrooks.info)
#  Licensed under the MIT license:
#  http://www.opensource.org/licenses/mit-license.php
#
#  Dependencies:
#    gnome-terminal
#    dbus-x11    
#
#  Notes:
#   - This script has been tested to work with Ubuntu
#   - This script must be run as $USER
#

gnome-terminal --geometry 58x8+0+0 --title "Connect to Tailscale" --window -- bash -c "tailscale up; exec bash"
