#!/bin/bash

# Terminal Size
width=$(tput cols)
height=$(tput lines)
# Half Sizes
half_height=$((height/2))
half_width=$((width/2))

get_Terminal() {
    str="Width = $width Height = $height"
    echo "Terminal"
    echo "$str"
}

middle_Terminal() {
    string="$1"
    length=${#string}
    half_length=$((length/2))
    tpup cup $((half_height)) $((half_width-half_length))
}

end_Terminal() {
    tput cup $((height-1))
}

end_Middle_Terminal() {
    string="$1"
    length=${#string}
    half_length=$((length/2))
    tput cup $((height-1)) $((half_width-half_length))
}

function end_Right_Terminal () {
    string="$1"
    length=${#string}
    wl=$((width-length))
    tput cup $((height-1)) $((15))
}
