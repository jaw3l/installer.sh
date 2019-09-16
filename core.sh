#!/bin/bash

# ----------------------------------
# Title = Installer Script
# Author = TK
# Description = Currently works on Ubuntu 18.04
# ----------------------------------

version="0.5"

# Include Scripts
source core/include.sh
status=$?
if test [$status == 1]
then
    printf "${red}[ ERROR ] ${rescol}Something went wrong. Please re-install the script."
    sleep 2
elif test [$status == 0]
then
    continue
fi

source sys/include.sh
status=$?
if test [$status == 1]
then
    printf "${red}[ ERROR ] ${rescol}Something went wrong. Please re-install the script."
    sleep 2
elif test [$status == 0]
then
    continue
fi

source menus/include.sh
status=$?
if test [$status == 1]
then
    printf "${red}[ ERROR ] ${rescol}Something went wrong. Please re-install the script."
    sleep 2
elif test [$status == 0]
then
    continue
fi



# Trap Force Quits
trap '' SIGINT SIGQUIT SIGTSTP


# Loops
# Pick & Install Loop
pick() {
    while true
    do
        menu_pick
        read_pick
    done
    pause
}

pick_2() {
    while true
    do
        menu_pick_2
        read_pick_2
    done
    pause
}

# Automated Install Loop
automated() {
    while true
    do
        menu_automated
        read_automated
    done
    pause
}

# Top Secret Panel Loop
tsp() {
    while true
    do
        menu_tsp
        read_tsp
    done
    pause
}

featured() {
    while true
    do
        menu_featured
        read_featured
    done
    pause
}

development() {
    while true
    do
        menu_development
        read_development
    done
    pause
}

social() {
    while true
    do
        menu_social
        read_social
    done
    pause
}

productivity() {
    while true
    do
        menu_productivity
        read_productivity
    done
    pause
}

utilities() {
    while true
    do
        menu_utilities
        read_utilities
    done
    pause
}

music_n_audio() {
    while true
    do
        menu_music_n_audio
        read_music_n_audio
    done
    pause
}

photo_n_video() {
    while true
    do
        menu_photo_n_video
        read_photo_n_video
    done
    pause
}

entertainment() {
    while true
    do
        menu_entertainment
        read_entertainment
    done
    pause
}

server_n_cloud() {
    while true
    do
        menu_server_n_cloud
        read_server_n_cloud
    done
    pause
}

security() {
    while true
    do
        menu_security
        read_security
    done
    pause
}

art_n_design() {
    while true
    do
        menu_art_n_design
        read_art_n_design
    done
    pause
}

devices_n_iot() {
    while true
    do
        menu_devices_n_iot
        read_devices_n_iot
    done
    pause
}

finance() {
    while true
    do
        menu_finance
        read_finance
    done
    pause
}

news_n_weather() {
    while true
    do
        menu_news_n_weather
        read_news_n_weather
    done
    pause
}

health_n_fitness() {
    while true
    do
        menu_health_n_fitness
        read_health_n_fitness
    done
    pause
}

education() {
    while true
    do
        menu_education
        read_education
    done
    pause
}

personalisation() {
    while true
    do
        menu_personalisation
        read_personalisation
    done
    pause
}

books_n_reference() {
    while true
    do
        menu_books_n_reference
        read_books_n_reference
    done
    pause
}

games() {
    while true
    do
        menu_games
        read_games
    done
    pause
}


# Main Loop
while true
do
    menu_main
    read_main
done
