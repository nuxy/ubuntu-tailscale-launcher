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

BASE_DIR=/opt/ubuntu-tailscale-launcher
TEMP_OUT=/tmp/master.zip

sudo curl -L https://github.com/nuxy/ubuntu-tailscale-launcher/archive/refs/heads/master.zip -o $TEMP_OUT
sudo unzip -jo $TEMP_OUT -d $BASE_DIR
sudo rm -f $TEMP_OUT
sudo cp $BASE_DIR/tailscale.desktop $HOME/.local/share/applications

echo "Installed successfully"
