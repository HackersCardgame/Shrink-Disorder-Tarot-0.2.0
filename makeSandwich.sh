#!/bin/bash


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
./scripts/printPDF.sh
#./printAll.sh DE
#./printAll.sh EN
