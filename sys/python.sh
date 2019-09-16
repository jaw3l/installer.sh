#!/bin/bash

################################
# Title: Python.sh
# Description: Installs Python
###############################

python.sh() {
    echo "[ ${yellow}PYTHON ${rescol}] This scripts will installed."
    echo "[ ${yellow}PYTHON ${rescol}] ca-certificates; gir1.2-glib-2.0; python-apt-common; python3-pip;"
    echo "[ ${yellow}PYTHON ${rescol}] python3; python3-dbus; python3-gi; python3-software-properties"
    if ! yn_Prompt "[ ${yellow}PYTHON ${rescol}] Are you sure want to continue?" Y; then
        echo ""
        echo "[ ${yellow}PYTHON ${rescol}] Exitting."
        sleep 1
        break
    else
        ${rescol}
        sudo apt install software-properties-common -y
        if [ $? != 0 ];
        then
            echo "Some error occured." #fix
        fi
        sudo apt install python3-pip -y
    fi
}
