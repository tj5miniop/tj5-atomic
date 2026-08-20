#!/bin/bash 

# Enable terra respository - disabled as bazzite has this already
#dnf5 -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
# Configure terra repositories
dnf5 -y install terra-release-mesa terra-release-nvidia terra-release-extras
dn5 -y install winetricks vlc localsend-bin nvidia-patch heroic-games-launcher faugus-launcher protonplus gpu-screen-recorder gpu-screen-recorder-ui steamtinkerlaunch
