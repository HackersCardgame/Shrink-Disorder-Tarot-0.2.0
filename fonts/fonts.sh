#!/bin/bash

echo $0

find . -name '*.zip' -exec unzip -n '{}'  -d ./unzipped/ \;

cd ./unzipped

find . -name '*.TTF' -exec mv '{}' ../ttf/ \;
find . -name '*.ttf' -exec mv '{}' ../ttf/ \;

cd ..

mkdir ~/.fonts

cp ./ttf/*.ttf ~/.fonts
cp ./ttf/*.TTF ~/.fonts

fc-cache -f -v


rm -rfv ./unzipped/*
rm -rfv ./ttf/*
rm -rfv ./ttf/.*

echo installed

echo $0
