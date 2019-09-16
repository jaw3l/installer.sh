#!/usr/bin/env bash

function ubuntu_mate.sh () {
    sudo apt install snapd
    sudo snap install ubuntu-mate-welcome --classic
}
