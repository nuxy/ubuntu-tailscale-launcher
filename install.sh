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

version=`awk -F= '$1=="VERSION_ID" { print $2; }' /etc/os-release | sed 's/^"\([0-9]*\).*/\1/'`

# Check package dependencies
if [ $version -gt 24 ] || [ -z `which gnome-terminal` ]; then
  cat << EOF
**ATTENTION**
gnome-terminal is not supported in this Ubuntu release and will be installed.

EOF

  read -e -p "Continue? [y/n] " confirm
  [[ "$confirm" == [Yy]* ]] && echo || exit 0

  sudo apt install -y gnome-terminal
fi

# Install package sources
sudo curl -L https://github.com/nuxy/ubuntu-tailscale-launcher/archive/refs/heads/master.zip -o $TEMP_OUT
sudo unzip -jo $TEMP_OUT -d $BASE_DIR
sudo rm -f $TEMP_OUT
sudo cp $BASE_DIR/tailscale.desktop $HOME/.local/share/applications

if [ $? -eq 0 ]; then
  echo "Installed successfully"
fi
