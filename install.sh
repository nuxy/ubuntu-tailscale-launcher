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
#    curl
#    unzip
#
#  Notes:
#   - This script has been tested to work with Ubuntu
#   - This script must be run as root
#

sudo curl -L https://github.com/nuxy/ubuntu-tailscale-launcher/archive/refs/heads/master.zip -o /tmp/master.zip
sudo unzip -j /tmp/master.zip -d /opt/ubuntu-tailscale-launcher
sudo rm -f /tmp/master.zip
sudo cp /opt/ubuntu-tailscale-launcher/tailscale.desktop $HOME/.local/share/applications

echo "Installed successfully"
