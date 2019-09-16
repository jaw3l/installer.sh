#!/bin/bash

##################################
# Author: jaw3l (TK)             #
# Title: Read Choices            #
# Description: Reads user input. #
##################################

read_main() {
    local choice
    end_Middle_Terminal "[ 1 - 4 ]:"
    read -p "${red}[ ${rescol}1 - 4 ${red}]${rescol}: " choice
    case $choice in
        [1] | [Pp][Ii][Cc][Kk] | [Ii][Nn][Ss][Tt][Aa][Ll][Ll]) pick ;;
        [2] | [Ff][Rr][Ee][Ss][Hh] | [Aa][Uu][Tt][Oo][Mm][Aa][Tt][Ee][Dd]) automated ;;
        [3] | [Tt][Ss][Pp]) tsp;;
        [4] | [:][Qq]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range or spell correctly." && sleep 2
    esac
}

read_pick() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 10 ${red}]${rescol}: " choice
    case $choice in
        [Ff] | [Ff][Ee][Aa][Tt][Uu][Rr][Ee][Dd]) featured ;;
        [1]  | [Dd][Ee][Vv][Ee][Ll][Oo][Pp][Mm][Ee][Nn][Tt]) development ;;
        [2]  | [Ss][Oo][Cc][Ii][Aa][Ll]) social ;;
        [3]  | [Pp][Rr][Oo][Dd][Uu][Cc][Tt][Ii][Vv][Ii][Tt][Yy]) productivity ;;
        [4]  | [Uu][Tt][Ii][Ll][Ii][Tt][Ii][Ee][Ss]) utilities ;;
        [5]  | [Mm][Uu][Ss][Ii][Cc] | [Aa][Uu][Dd][Ii][Oo]) music_n_audio ;;
        [6]  | [Ps][Hh][Oo][Tt][Oo] | [Vv][Ii][Dd][Ee][Oo]) photo_n_video ;;
        [7]  | [Ee][Nn][Tt][Ee][Rr][Tt][Aa][Ii][Nn][Mm][Ee][Nn][Tt]) entertainment ;;
        [8]  | [Ss][Ee][Rr][Vv][Ee][Rr] | [Cc][Ll][Oo][Uu][Dd]) server_n_cloud ;;
        [9]  | [Ss][Ee][Cc][Uu][Rr][Ii][Tt][Yy]) security ;;
        [10] | [Aa][Rr][Tt] | [Dd][Ee][Ss][Ii][Gg][Nn]) art_n_design ;;
        
        [Nn] | [:][Nn] | [Nn][Ee][Xx][Tt]) pick_2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

read_pick_2() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 8 ${red}]${rescol}: " choice
    case $choice in
        [1] | [Dd][Ee][Vv][Ii][Cc][Ee][Ss] | [Ii][Oo][Tt]) devices_n_iot ;;
        [2] | [Ff][Ii][Nn][Aa][Nn][Cc][Ee]) finance ;;
        [3] | [Nn][Ee][Ww][Ss] | [Ww][Ee][Aa][Tt][Hh][Ee][Rr]) news_n_weather;;
        [4] | [Hh][Ee][Aa][Ll][Tt][Hh] | [Ff][Ii][Tt][Nn][Ee][Ss][Ss]) health_n_fitness ;;
        [5] | [Ee][Dd][Uu][Cc][Aa][Tt][Ii][Oo][Nn]) education ;;
        [6] | [Pp][Ee][Rr][Ss][Oo][Nn][Aa][Ll][Ii][Ss][Aa][Tt][Ii][Oo][Nn]) personalisation ;;
        [7] | [Bb][Oo][Oo][Kk][Ss] | [Rr][Ee][Ff][Ee][Rr][Ee][Nn][Cc][Ee]) books_n_reference ;;
        [8] | [Gg][Aa][Mm][Ee][Ss]) games ;;
        
        [Pp] | [:][Pp] | [Pp][Rr][Ee][Vv][Ii][Uu][Ss]) pick ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

read_automated() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1] | [Aa][Ii] | [Ii][Nn][Ss][Tt][Aa][Ll][Ll]) automated_install.sh ;;
        [2] | [Aa][Uu] | [Uu][Nn][Ii][Nn][Ss][Tt][Aa][Ll][Ll]) automated_uninstall.sh ;;
        
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

read_tsp() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 4 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_featured () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1] | [Uu][Pp][Gg][Rr][Aa][Dd][Ee]) upgrade.sh ;;
        [2] | [Pp][Yy][Tt][Hh][Oo][Nn] | [Pp][Yy]) python.sh ;;
        [3] | [Gg][Ii][Tt]) git.sh ;;
        [4] | [Bb][Uu][Ii][Ll][Dd][][Ee][Ss][Ss][Ee][Nn][Tt][Ii][Aa][Ll] | [Bb][Ee]) build_essential.sh;;
        [5] | [Ff][Ff][Mm][Pp][Ee][Gg]) ffmpeg.sh ;;
        [6] | [Oo][Pp][Uu][Ss] | [Ll][Ii][Bb][][Oo][Pp][Uu][Ss]) libopus.sh ;;
        
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_development() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_social() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_productivity() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_utilities() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_music_n_audio() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_photo_n_video() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_entertainment() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_server_n_cloud() {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_security () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_art_n_design () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_devices_n_iot () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_finance () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_news_n_weather () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_health_n_fitness () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_education () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_personalisation () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_book_n_reference () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}

function read_games () {
    local choice
    end_Terminal
    read -p "${red}[ ${rescol}1 - 2 ${red}]${rescol}: " choice
    case $choice in
        [1]) add_user.sh ;;
        [2]) script2 ;;
        [Bb] | [:][Bb] | [Bb][Aa][Cc][Kk]) exec $0;;
        [Qq] | [:][Qq] | [Qq][Uu][Ii][Tt]) exit 0;;
        *) printf "${red}[ ERROR ]${rescol} Please select number from range." && sleep 2
    esac
}


