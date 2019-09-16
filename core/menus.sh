#!/bin/bash

# TODO: Clean this mess.

menu_main() {
    clear
    local str
    width=$(tput cols)
    height=$(tput lines)
    str="|========================================|"
    length=${#str}
    half_height=$((height/1,2))
    half_width=$((width/2))
    half_length=$((length/2))
    tput cup $((half_height)) $((half_width-half_length))
    echo "$str"
    tput cup $((half_height-1)) $((half_width-half_length))
    echo "|=          I N S T A L L E R           =|"
    tput cup $((half_height-2)) $((half_width-half_length))
    echo "$str"
    
    #
    pick_n_install="1. PICK & INSTALL"
    length_pni=${#pick_n_install}
    half_length_pni=$((length_pni/2))
    tput cup $((half_height+1)) $((half_width-half_length_pni))
    echo "$pick_n_install"
    
    #
    automated_install="2. AUTOMATED INSTALL"
    length_ai=${#automated_install}
    half_length_ai=$((length_ai/2))
    tput cup $((half_height+2)) $((half_width-half_length_ai))
    echo "$automated_install"
    
    #
    tsp="3. TOP SECRET PANEL"
    length_tsp=${#tsp}
    half_length_tsp=$((length_tsp/2))
    tput cup $((half_height+3)) $((half_width-half_length_tsp))
    echo "$tsp"
    
    #
    quit="4. QUIT"
    length_quit=${#quit}
    half_length_quit=$((length_quit/2))
    tput cup $((half_height+4)) $((half_width-half_length_quit))
    echo "$quit"
}

menu_pick() {
    clear
    echo "|===================================|"
    echo "|=     P I C K & I N S T A L L     =|"
    echo "|===================================|"
    echo "f. Featured"
    echo "1. Development"
    echo "2. Social"
    echo "3. Productivity"
    echo "4. Utilities"
    echo "5. Music & Audio"
    echo "6. Photo & Video"
    echo "7. Entertainment"
    echo "8. Server & Cloud"
    echo "9. Security"
    echo "10. Art & Design"
    
    echo "-----------------"
    echo "n. Next Page" # Print Next Page
    echo "b. Back" # Print Back
    echo "q. Quit" # Print Quit
}

menu_pick_2() {
    clear
    echo "|===================================|"
    echo "|=     P I C K & I N S T A L L     =|"
    echo "|===================================|"
    echo "1. Devices & IoT"
    echo "2. Finance"
    echo "3. News & Weather"
    echo "4. Health & Fitness"
    echo "5. Education"
    echo "6. Personalisation"
    echo "7. Books & Reference"
    echo "8. Games"
    
    echo "----------------------"
    echo "p. Previus Page"
    echo "b. Back"
    echo "q. Quit"
}

menu_automated() {
    clear
    echo "|=============================================|"
    echo "|=     A U T O M A T E D - I N S T A L L     =|"
    echo "|=============================================|"
    echo "1. Automated Install"
    echo "2. Automated Uninstall"
    
    echo "-------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_tsp() {
    clear
    echo "|=====================================|"
    echo "|=     T O P S E C R E T M E N U     =|"
    echo "|=====================================|"
    echo "1. Add User"
    echo "2. WIP"
    
    echo "---------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_featured() {
    clear
    echo "|=====================================|"
    echo "|=          F E A T U R E D          =|"
    echo "|=====================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_development() {
    clear
    echo "|=====================================|"
    echo "|=       D E V E L O P M E N T       =|"
    echo "|=====================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_social() {
    clear
    echo "|=====================================|"
    echo "|=            S O C I A L            =|"
    echo "|=====================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_productivity() {
    clear
    echo "|=====================================|"
    echo "|=      P R O D U C T I V I T Y      =|"
    echo "|=====================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_utilities() {
    clear
    echo "|=====================================|"
    echo "|=         U T I L I T I E S         =|"
    echo "|=====================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_music_n_audio() {
    clear
    echo "|=======================================|"
    echo "|=       M U S I C  &  A U D I O       =|"
    echo "|=======================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_photo_n_video() {
    clear
    echo "|==================================|"
    echo "|=   P H O T O   &   V I D E O    =|"
    echo "|==================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_entertainment() {
    clear
    echo "|==================================|"
    echo "|=   E N T E R T A I N M E N T    =|"
    echo "|==================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_server_n_cloud() {
    clear
    echo "|==================================|"
    echo "|=  S E R V E R   &   C L O U D   =|"
    echo "|==================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_security() {
    clear
    echo "|==================================|"
    echo "|=         S E C U R I T Y        =|"
    echo "|==================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_art_n_design(){
    clear
    echo "|================================|"
    echo "|=   A R T   &   D E S I G N    =|"
    echo "|================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_devices_n_iot(){
    clear
    echo "|================================|"
    echo "|=  D E V I C E S   &   I O T   =|"
    echo "|================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_finance(){
    clear
    echo "|================================|"
    echo "|=        F I N A N C E         =|"
    echo "|================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_news_n_weather(){
    clear
    echo "|==========================================|"
    echo "|=      N E W S   &   W E A T H E R       =|"
    echo "|==========================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}

menu_news_n_weather(){
    clear
    echo "|==========================================|"
    echo "|=      N E W S   &   W E A T H E R       =|"
    echo "|==========================================|"
    echo "1. x"
    echo "2. y"
    
    echo "--------------"
    echo "b. Back"
    echo "q. Quit"
}



