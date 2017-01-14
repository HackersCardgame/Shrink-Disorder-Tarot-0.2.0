#!/bin/bash

mkdir -p pdf/DE
mkdir -p pdf/EN
mkdir -p png/DE
mkdir -p png/EN
mkdir -p jpg/DE
mkdir -p jpg/EN
mkdir -p png/DE
mkdir -p png/EN


cd ./scripts
./install.sh
./generatePNGs.sh DE
./generatePNGs.sh EN
cd ../png/
./createJPGs.sh
cd ../scripts
./generateA4.sh DE
./generateA6.sh DE
./generateA4.sh EN
./generateA6.sh EN
#./scripts/printPDF.sh
#./printAll.sh DE
#./printAll.sh EN

echo "
now you can got to eg the directory assembled/DE/A6 and run ./printAll.sh
to print your German (DE) cards on A6 Cards on your default printer 
(select first the correct printer as default, you must be su to do so)

or cd assembled/EN/A4 ./printAll.sh to print all your cards on A4 Sheets
remember, if you laminate them the look better and are more stabile

have fun...
"

