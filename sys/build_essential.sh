#!/bin/bash

# ADD INFO ABOUT PACKAGES INCLUDINGS

build_essential.sh() {
    echo "[ ${green}BE ${rescol}] This scripts will be installed."
    echo "[ ${green}BE ${rescol}] dpkg-dev; g++; gcc; libc6-dev; make"
    if ! yn_Prompt "[ ${green}BE ${rescol}] Are you sure want to continue?" Y; then
        echo ""
        echo "[ ${green}BE ${rescol}] Exitting."
    else
        sudo apt install build-essential -y
    fi
    pause
}
