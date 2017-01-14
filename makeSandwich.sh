#!/bin/bash

clear

if  [ "$1" = "" ]
then
echo -e "
\e[39m
Usage:
------
To generate the Spanish deck type: \e[36m./makeSandwich.sh ES\e[39m
To generate the Englsih deck type: \e[36m./makeSandwich.sh EN\e[39m
To generate the German deck type: \e[36m./makeSandwich.sh DE\e[39m

to generate all decks thyt will (b)lock computer for about 5h
type \e[36m./makeSandwich.sh all\e[39m


"
exit 0
fi


if  [ "$1" = "all" ]
then
echo -e "

making all sandwiches, go and do something else...

"
find ./cards/ -type d -maxdepth 1 | grep -v ^.$ |cut -c 9-  |grep -v ^$ >all.txt

for i in $(cat all.txt)
do
 echo $i
done

fi
exit 0

mkdir -p pdf/$1
mkdir -p png/$1
mkdir -p jpg/$1
mkdir -p pdf/$1


cd ./scripts
./install.sh
./generatePNGs.sh DE
./generatePNGs.sh EN
cd ../png/
./createJPGs.sh
cd ../scripts
./generateA4.sh $1
./generateA6.sh $1
./generatePDFs.sh $1

echo "
now you can got to eg the directory assembled/DE/A6 and run ./printAll.sh
to print your German (DE) cards on A6 Cards on your default printer 
(select first the correct printer as default, you must be su to do so)

or cd assembled/EN/A4 ./printAll.sh to print all your cards on A4 Sheets
remember, if you laminate them the look better and are more stabile

have fun...
"

