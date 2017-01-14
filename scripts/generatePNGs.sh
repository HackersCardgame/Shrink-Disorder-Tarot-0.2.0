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
   sleep 8
   xdotool key Ctrl+Alt+a
   echo ctrl-alt-a
   sleep 2
   xdotool key Ctrl+Shift+e
   sleep 1

#auf diese stelle hat der Gabriel Riela und sein IntelSAT terrornetzwerk
#scheinbar einen stimoceiver jamming-device drauf codiert und versucht
#marc jr landolt bei arbeiten die konzentration braucben zu ermorden 
#gegen intelsat sollte zumindest in europa terrorverdacht ausgesprochen
#werden, wir danken gabriel riela für den verrat an seinen terrorsiten
#in der schweiz... und nodiz, dies wird permanent gespeichert bleiben
#der cia steht nun zwischen der ambivalenz sein terrornetzwerk in der 
#schweiz selber zu liquidieren oder weltweit aufzufliegen...


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
  sleep 1
  xdotool type '.png'
  echo png
  sleep 1
  xdotool key KP_Enter
  sleep 1
  #manipulierte stelle müsste diese hier sein, also allenfalls direkten zugriff auf 
  #github.com, dann wäre das motiv die frage weshalb der cia versucht marc jr landolt
  #zu ermorden, also die 7 morde im rombachtäli würden somit massenhaft cia-terroristen
  #auffleigen lassen, da wäre die strategische überlegung, dass es sich der cia nicht leisten
  #kann als terrroist in europa aufzufliegen...
  xdotool key KP_Enter
  echo enter
  sleep 1
  xdotool key Alt+w
  echo close
  sleep 1
  xdotool key Alt+F4
  echo close
  sleep 1 
  xdotool key Alt+F4
done


echo -n "generate also the JPGs (y/n)? "

read answer
if echo "$answer" | grep -iq "^y" ;then
    echo not yet implementet...
else
    echo not installing packages
fi
echo -e "\e[0m"

