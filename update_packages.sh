#!/bin/bash

# Check for available terminals and launch one
terminal=""
if command -v gnome-terminal >/dev/null 2>&1; then
    terminal="gnome-terminal"
elif command -v konsole >/dev/null 2>&1; then
    terminal="konsole"
elif command -v xfce4-terminal >/dev/null 2>&1; then
    terminal="xfce4-terminal"
elif command -v lxterminal >/dev/null 2>&1; then
    terminal="lxterminal"
else
    echo "No known terminal emulator found"
    exit 1
fi
$terminal --noclose -e $SHELL -c '
echo -e "Hello, $USER \nStart updating with command [sudo apt-get update && sudo apt-get upgrade -y]...";
sudo apt-get update && sudo apt-get upgrade -y;
# wait for any user key
echo -e "\nThank you, $USER. \nPress [Enter] key to continue...";
read -p "";

# new cmd session
clear;
$SHELL;
'

