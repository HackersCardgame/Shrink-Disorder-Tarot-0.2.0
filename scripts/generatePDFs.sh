#!/bin/bash

if  [ "$1" = "" ]
then
echo -e "
\e[39m
Usage:
------
To generate the Enlgish PDF sheets: \e[36m./generateA6.sh EN\e[39m
To generate the German  PDF sheets: \e[36m./generateA6.sh DE\e[39m

"
exit 0
fi



find ./assembled/$1/A4 -name "*.svg" >./pdf_$1.txt
find ./assembled/$1/A6 -name "*.svg" >>./pdf_$1.txt


 /usr/bin/inkscape &

counter=0

 for i in $(cat ./pdf_$1.txt)
  do
 
   /usr/bin/inkscape $i &

   sleep 5
   xdotool key ctrl+p
   sleep 0.8
   xdotool key Right Right Right Right 
   sleep 0.5
   xdotool key Down Down Down Down 
   sleep 0.1
   xdotool key Tab  
   sleep 0.1
   xdotool key Tab  
   sleep 0.1
   xdotool key Tab  
   sleep 0.1
   xdotool key KP_Enter
   sleep 5
   xdotool key alt+F4

   echo printed $i

  done

