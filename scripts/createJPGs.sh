#!/bin/sh
find ../png -type d -maxdepth 1 | grep -v ^.$ |cut -c 3- >./languages.txt

for l in $(cat ./languages.txt)
do
  echo  ../$l/ => ../jpg/$l/
  mkdir --parents ../jpg/$l


  find ./$l/ -name '*.png' >temp.txt

  for f in $(cat ./temp.txt)
  do
    echo $f
    echo convert -format jpg -quality 50 $(dirname $f)/$(basename $f .png).png ../jpg/$(dirname $f)/$(basename $f .png).jpg
    convert -format jpg -quality 50 $(dirname $f)/$(basename $f .png).png ../jpg/$(dirname $f)/$(basename $f .png).jpg
  done


done

rm temp.txt
rm languages.txt

