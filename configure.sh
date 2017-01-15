#!/bin/bash

clear


echo -e "

\e[37m Installation of the base system \e[0m"


echo -e "
  * script will install the needed Creative Commons fonts (./fonts/install.sh),
  * script will uninstall the clipit package (sudo apt-get remove clipit)
  * for the moment it runs on gnome only
  * script needs sudo (apt-get install sudo) 
    ...and an entry in \e[33m/etc/sudoers\e[0m file, you can copy the line 
\e[33m    \"root	ALL=(ALL:ALL) ALL\"\e[0m

"
echo -n "install/remove required/unrequired debian jessie packages (y/n)? "

read answer
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install inkscape
sudo apt-get install xdotool figlet
sudo apt-get remove clipit

cd ../fonts
./fonts.sh
cd ..

echo -e "\e[34m"

fonts (maybe) installed

else
    echo not installing packages
fi


