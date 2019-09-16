#!/bin/bash

##################################
# Title: Upgrade                 #
# Description: Upgrades the apt. #
##################################

upgrade() {
    local title="Upgrade"
    local description="Upgrades the apt."
}

upgrade.sh() {
    sudo apt update;
    sudo apt upgrade -y;
    #sudo apt autoremove -y;
}

upgrade_ar.sh() {
    upgrade.sh
    sudo apt autoremove -y;
}