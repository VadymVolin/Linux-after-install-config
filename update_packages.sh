#!/bin/bash
# GNOME
# # gnome-terminal -- bash --noclose -e 'echo -e "Hello, $USER Start updating with command [sudo apt-get update && sudo apt-get upgrade -y]...";
# sudo apt-get update && sudo apt-get upgrade -y;
# # wait for any user key
# echo -e "\nThank you, $USER. \nPress [Enter] key to continue...";
# read -p "";
#
# # new cmd session
# clear;
# $SHELL;
#
# '

# Konsole
# Open konsole terminal
konsole --noclose -e $SHELL -c 'echo -e "Hello, $USER \nStart updating with command [sudo apt-get update && sudo apt-get upgrade -y]...";
sudo apt-get update && sudo apt-get upgrade -y;
# wait for any user key
echo -e "\nThank you, $USER. \nPress [Enter] key to continue...";
read -p "";

# new cmd session
clear;
$SHELL;

'

