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
./scripts/printPDF.sh
#./printAll.sh DE
#./printAll.sh EN
