#!/bin/bash

clear

if  [ "$1" = "" ]
then
echo -e "
\e[39m
Usage:
------
To generate the Enlgish PNGs sheets: \e[36m./generatePNGs.sh EN\e[39m
To generate the German  PNGs sheets: \e[36m./generatePNGs.sh DE\e[39m


"
exit 0
fi


clear

echo -e "\e[31m * You need to install the fonts (./fonts/install.sh),
 * to close all instances of inkscape
 * and you maybe have to remove the clipit package (sudo apt-get remove clipit) temporarly\e[0m
 * for the moment it runs only on GNOME
"
echo -n "Press [ENTER] if you changed the settings."
read answer

echo

echo -n "install/remove required/unrequired debian jessie packages (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
sudo apt-get install xdotool figlet
sudo apt-get remove clipit
else
    echo not installing packages
fi


find ../cards/$1 -name "*.svg" >./PNGs.txt

counter=0

 for i in $(cat ./PNGs.txt)
  do
   let counter=counter+1

   echo $conter
 
   /usr/bin/inkscape $i &
   sleep 5
   xdotool key Ctrl+Alt+a
   echo ctrl-alt-a
   sleep 1
   xdotool key Ctrl+Shift+e
   sleep 1.2

  #xdotool click 1
  sleep 1
  #xdotool key Ctrl+a
#   xdotool key Tab  Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab
#   sleep 2
pngpath=$(dirname $(pwd))/png
#echo $pngpath
   sleep 1
   xdotool key Alt+b
   sleep 1
   xdotool type "$pngpath/$1/"
   xdotool type $(basename $i .svg)
   echo $i
   sleep 1
   xdotool type '.png'
   echo png
   sleep 1
   xdotool key KP_Enter
   sleep 0.5
   xdotool key Alt+e
   echo enter
   sleep 1
   xdotool key Alt+F4
   echo close
   sleep 0.2
   xdotool key Alt+F4
   echo close
  sleep 0.2 
  xdotool key Alt+w
done


echo -n "generate also the JPGs (y/n)? "

read answer
if echo "$answer" | grep -iq "^y" ;then
    echo not yet implementet...
else
    echo not installing packages
fi
echo -e "\e[0m"

