#!/bin/bash

apps=
"
build-essential
python3-pip
libopus-dev
software-properties-common
libffi-dev
libsodium-dev
ffmpeg
"

automated_installer.sh(){
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y $apps
  sudo apt upgrade -y
}

# ADD INFO AND YES NO PROMPT
