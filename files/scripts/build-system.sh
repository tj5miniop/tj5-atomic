#!/bin/bash 
# Enable terra respository - disabled as bazzite has this already
#dnf5 -y install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
# Configure terra repositories
dnf5 -y install terra-release-mesa terra-release-extras
dnf5 -y install winetricks vlc localsend-bin nvidia-patch heroic-games-launcher faugus-launcher protonplus gpu-screen-recorder gpu-screen-recorder-ui steamtinkerlaunch

# Install github-cli
dnf5 -y install gh

# Remove certain bazzite packages to help prevent some issues 
dnf5 -y remove lutris 

# Install and add certain applications which is not usually included inside bazzite by default
dnf5 -y install sunshine ds-inhibit ryzen-adj

