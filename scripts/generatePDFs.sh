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


mkdir -p ~/PDF/oldPDFs
#mv ~/PDF/* ~/PDF/oldPDFs

for i in $(ls ~/PDF/*.pdf )
 do
  echo mv $i $(echo $i | sed 's/Print_//g')

done

find ../assembled/$1/A4 -name "*.svg" >./pdf_$1_A4.txt
find ../assembled/$1/A6 -name "*.svg" >./pdf_$1_A6.txt

mkdir -r ../pdf/$1/A4
mkdir -r ../pdf/$1/A6


 /usr/bin/inkscape &

counter=0

for j in $(echo "./pdf_$1_A4.txt" "./pdf_$1_A6.txt")
 do
 echo j: $j
 for i in $(cat $j)
  do
  echo i: $i
echo "
  exit 0 
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
"
  done

if  [ "$1" = "./pdf_$1_A4.txt" ]
 then
  echo mv ~/PDF/*.pdf ../pdf/$1/A4
 else
  echo mv ~/PDF/*.pdf ../pdf/$1/A6
fi

 done

for i in $(ls ~/PDF )
 do
  echo $i
done

