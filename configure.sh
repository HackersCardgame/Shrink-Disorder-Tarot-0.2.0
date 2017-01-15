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
figlet packages / fonts installed

else
    echo not installing packages
fi
echo -e "\e[0m"

echo you can now edit cards on your debian system by hand or fix my language speaksing mistakes by running ./editMultiLang.sh
echo
echo -e "or you can generate all German cards with \e[33m./generateA4.sh DE\e[0m for A4 sheets"
echo -e "or you can generate all English cards with \e[33m./generateA6.sh EN\e[0m for A6 sheets"
echo
echo -e "or you can print all English A4 cards with \e[33m./assembled/A4/EN/printAll.sh\e[0m"
echo -e "or you can print German all A6 cards with \e[33m./assembled/A6/DE/printAll.sh\e[0m"
echo
echo

