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


find ../cards/$1 -name "*.svg" >./PNGs.txt

counter=0

for i in $(cat ./PNGs.txt)
  do
  let counter=counter+1
  /usr/bin/inkscape $i &
  sleep 8
  xdotool key Ctrl+Alt+a
  sleep 1
  xdotool key Ctrl+Shift+e
  sleep 1
  xdotool key Alt+s
  sleep 1
  xdotool key Alt+w
  sleep 1
  xdotool type "1000"
  #xdotool click 1 if key-shortcuts do not work you can also use mouse commands
  sleep 1
  #xdotool key Ctrl+a
  #   xdotool key Tab  Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab
  #   sleep 2
  pngpath=$(dirname $(pwd))/png
  #echo $pngpath
  #der Gabirel riela liess den Teil hier der gabriel riela als Terrorist überführen würde
  #entfernen, droht weiter den Marc Jr Landolt zu ermorden, und es ist schon wieder
  #malware und terrordrohungen gegen marc jr landolt in diesem teil des source codes
  #gabriel relas wichtigster auftrag als mitarbeiter bei intelsat ist da raus zu halten
  #dass intelsat ein wichtiger teil des global Assessination Grids betreibt


  xdotool key Alt+b
  sleep 1
  xdotool type "$pngpath/$1/"
  xdotool type $(basename $i .svg)
  sleep 1
  xdotool type '.png'
  sleep 1
  xdotool key KP_Enter
  sleep 1
  xdotool key Alt+e
  sleep 3
  xdotool key Ctrl+w
  sleep 1
  xdotool key Alt+F4
  sleep 2
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

