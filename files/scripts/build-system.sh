#!/bin/bash 

# exit if an error occurs
set -oue pipefail
# Define subroutines

intro() {
    echo "
████████╗  ██╗███████╗       █████╗ ████████╗ ██████╗ ███╗   ███╗██╗ ██████╗
╚══██╔══╝  ██║██╔════╝      ██╔══██╗╚══██╔══╝██╔═══██╗████╗ ████║██║██╔════╝
   ██║     ██║███████╗█████╗███████║   ██║   ██║   ██║██╔████╔██║██║██║     
   ██║██   ██║╚════██║╚════╝██╔══██║   ██║   ██║   ██║██║╚██╔╝██║██║██║     
   ██║╚█████╔╝███████║      ██║  ██║   ██║   ╚██████╔╝██║ ╚═╝ ██║██║╚██████╗
   ╚═╝ ╚════╝ ╚══════╝      ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝ ╚═════╝
                                                                            "
}

update_sys() {
    # update system
    dnf5 -y update && dnf5 -y upgrade && dnf5 -y clean all
}

flatpak_cleanup() {
    # this removes ALL bazzite flatpaks - these will be replaced with alternatives
    flatpak remove $(curl -L https://raw.githubusercontent.com/ublue-os/bazzite/18a220517154c36d0e0aea42ddc221b3760f55d6/installer/kde_flatpaks/flatpaks) -y
}

app_install () {
    dnf5 -y install gh vlc

}

bazzite_removal() {
    echo "--- removing certain Bazzite software ---"
    # this removes any software I may not use or could cause issues with this fork as it develops
    dnf5 -y remove lutris kate gwenview haruna okular bazzite-updater bazzite-portal waydroid waydroid-selinux
}

bazzite_additions() {
    echo "--- adding more features ---"
    dnf5 -y install loupe virt-manager qemu edk2-ovmf libvirt
}

decky() {
    echo "--- installing decky loader by default ---"
    # PLACEHOLDER
}

development() {
    echo "--- installing Dev Tools ---"
    # this will be expanded in the near future 
    dnf5 -y install uv nano  
}

cleanup() { 
    echo "--- cleanup time! ---" 
    dnf5 -y clean all
}



# Execute the code
echo "Setting up tj5-atomic...." 
intro
update_sys
app_install
bazzite_removal
bazzite_additions
development
cleanup

















###################### REWRITE ########################## 
 


