#!/usr/bin/env bash

function livepatch.sh () {
    sudo apt install snapd
    sudo snap install canonical-livepatch
}
