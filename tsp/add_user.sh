#!/bin/bash

add_user.sh() {
    sudo useradd -m -s /bin/bash "$1"
    echo "$2" | sudo passwd --stdin "$1"
}