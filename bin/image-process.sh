#!/bin/ksh

if [ ! -d square ];
then
  echo "Creating square directory"
  mkdir square
else
  echo "square dir already exists"
fi

for file in ./*.jpg
do
 echo "Processing $file"
 echo "Trimming image..." 
 convert $file -fuzz 14% -trim /tmp/cropped.jpg
 echo "Padding image..." 
 convert /tmp/cropped.jpg -bordercolor white -border 2%x2% /tmp/cropped-padded.jpg
 echo "Transforming image..." 
 convert /tmp/cropped-padded.jpg \( +clone -rotate 90 +clone -mosaic +level-colors white \) +swap -gravity south -composite ./square/$file
done
