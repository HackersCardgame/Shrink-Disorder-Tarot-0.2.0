#!/bin/bash


find ./assembled/$1/A4 -name "*.svg" >./pdf_$1.txt
find ./assembled/$1/A6 -name "*.svg" >./pdf_$1.txt


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

