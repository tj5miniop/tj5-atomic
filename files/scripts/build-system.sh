#!/bin/bash 

# exit if an error occurs
set -e 

# Define subroutines
update_sys() {
    echo "-- Updating the System...-- "
    # update system
    dnf5 -y update && dnf5 -y upgrade && dnf5 -y clean all
}

terra_config() {
    # configure terra repositories and add github CLI
    echo "--- Configuring Teraa repositories ---" 
    dnf5 -y install gh terra-release-mesa terra-release-extras
    dnf5 -y install winetricks vlc localsend-bin nvidia-patch heroic-games-launcher faugus-launcher protonplus gpu-screen-recorder gpu-screen-recorder-ui steamtinkerlaunch
}

bazzite_removal() {
    echo "--- removing certain Bazzite software ---"
    # this removes any software I may not use or could cause issues with this fork as it develops
    dnf5 -y remove lutris kate gwenview haruna okular konsole bazzite-updater bazzite-portal waydroid waydroid-selinux --allowerasing
}

bazzite_additions() {
    echo "--- adding more features ---"
    dnf5 -y install sunshine ds-inhibit ryzen-adj ghostty loupe
}

decky() {
    echo "--- installing decky loader by default ---"
    # PLACEHOLDER
}

development() {
    echo "--- installing Dev Tools ---"
    # this will be expanded in the near future 
    dnf5 -y install codium 
}

cleanup() { 
    echo "--- cleanup time! ---" 
    dnf5 -y clean all
    rm -rf /tmp/*
    rm -rf /var/cache*
}


# Execute the code
echo "Setting up tj5-atomic...." 
update_sys
terra_config
bazzite_removal
bazzite_additions
development
cleanup

















###################### REWRITE ########################## 
 


