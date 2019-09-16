#!/bin/bash

pause(){
    str="Press ${red}[ENTER]${rescol} to continue."
    end_Terminal
    read -p "$str" fackEnterKey
}

yn_Prompt(){
    local prompt="$1"
    local initial="$2"
    
    if [ "${initial}" == "Y" ]; then
        prompt+=" [Y/n] "
        elif [ "${initial}" == "N" ]; then
        prompt+=" [y/N] "
    else
        prompt+=" [y/n] "
    fi
    
    while true; do
        read -e -i "${initial}" -p  "${prompt}" -r yn
        case "${yn}" in
            [Yy]|[Yy][Ee][Ss]) return 0 ;;
            [Nn]|[Nn][Oo]) return 1 ;;
            *) echo -e "Please answer yes or no." ;;
        esac
    done
}