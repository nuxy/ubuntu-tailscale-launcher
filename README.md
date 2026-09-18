# ubuntu-tailscale-launcher

[![](https://img.shields.io/github/v/release/nuxy/ubuntu-tailscale-launcher)](https://github.com/nuxy/ubuntu-tailscale-launcher/releases) [![NO AI](https://raw.githubusercontent.com/nuxy/no-ai-badge/master/badge.svg)](https://github.com/nuxy/no-ai-badge)

Another (unofficial) Ubuntu [Tailscale](https://tailscale.com) VPN launcher.

![Tailscale](https://raw.githubusercontent.com/nuxy/ubuntu-tailscale-launcher/master/preview.png)

## Dependencies

- [Tailscale](https://tailscale.com/download)
- [gnome-terminal](https://en.wikipedia.org/wiki/GNOME_Terminal)
- [dbus-x11](https://packages.ubuntu.com/search?keywords=dbus-x11&searchon=names)

## Installation

### Remote script

Install the package using a remote [bash](https://www.gnu.org/software/bash) script.

    $ curl -fsSL https://raw.githubusercontent.com/nuxy/ubuntu-tailscale-launcher/refs/heads/master/install.sh | sh

### Local script

Install the package using the provided [bash](https://www.gnu.org/software/bash) script.

    $ ./update.sh

## Permissions

In order to successfully run the desktop launcher you will need to grant the local user execution rights to the `tailscale` binary.  This can be done using the following command:

    $ sudo tailscale set --operator=$USER

## Motivation

[Ubuntu](https://ubuntu.com/download/desktop) users, notably non-technical ones, **should not have to know how to use the [Gnome terminal](https://en.wikipedia.org/wiki/GNOME_Terminal)** in order to launch the Tailscale VPN client. This desktop launcher has been created as a workaround to this limitation.

## Contributions

If you fix a bug, or have a code you want to contribute, please send a pull-request with your changes.

## Versioning

This package is maintained under the [Semantic Versioning](https://semver.org) guidelines.

## License and Warranty

This package is distributed in the hope that it will be useful, but without any warranty; without even the implied warranty of merchantability or fitness for a particular purpose.

_ubuntu-tailscale-launcher_ is provided under the terms of the [MIT license](http://www.opensource.org/licenses/mit-license.php)

[Tailscale](https://tailscale.com) is a registered trademark of Tailscale, Inc.

## Author

[Marc S. Brooks](https://github.com/nuxy)
