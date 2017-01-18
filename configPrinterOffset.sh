#!/bin/bash

if  [ "$1" = "" ]
then
echo -e "
\e[39m
Usage:
------
to configure the printer offset for the rear-side edit: \e[36m./template/back_A6.svg or ./template/back_A4.svg\e[0m
if you want to use the template for the Canon Photo Paper A6 just copy this file to back_A6.svg

(my system is configured with the \e[33mmetric system\e[0m and i use \e[33mDIN A4\e[0m, \e[31mUS Letter System not test yet\e[0m...)

"
exit 0
fi


