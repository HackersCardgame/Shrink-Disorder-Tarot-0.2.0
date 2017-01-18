#!/bin/bash

if  [ "$1" = "" ]
then
echo -e "
Usage:
------
to configure the printer offset for the rear-side edit: \e[36m./template/back_\e[31mA6\e[36m.svg\e[0m or \e[36m./template/back_\e[31mA4\e[36m.svg\e[0m
if you want to use the template for the Canon Photo Paper A6 just copy this file to back_A6.svg

Example:
--------
\e[33m./configurePrinter.sh\e[31m A6\e[0m
\e[31m(not input sanitized, case sensitive)\e[0m


(my system is configured with the \e[33mmetric system\e[0m and i use \e[33mDIN A4\e[0m, \e[31mUS Letter System not test yet\e[0m...)
"
exit 0
fi

echo -e "

to edit the current template press \e[31m[ENTER] or copy a given template to ./template/back_A6.svg in another terminal window\e[0m
this script will also open the first card in the EN directory, so you can print both sides of test sheet

"
read



/usr/bin/inkscape ./template/back_$1.svg &

find ./assembled/EN/$1 -name "*-*.svg" >./cards.txt

sleep 10

/usr/bin/inkscape $(head ./cards.txt -n1) &

