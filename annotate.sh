#!/bin/bash

# 1. change the image folder (src) and make sure it does
# not contain any spaces
# 2. change name/label if needed
src="AppleRed1"
files=$(ls $src | sed -r "s/.jpg//g")

for curr in $files; do
  echo "Processing $curr..."
  name="$curr.xml"
  echo "<annotation verified=\"yes\">" > $name
  echo "    <folder>images</folder>" >> $name
  echo "    <filename>$curr.jpg</filename>" >> $name
  echo "    <path>./$curr.jpg</path>" >> $name
  echo "    <source>" >> $name
  echo "        <database>Unknown</database>" >> $name
  echo "    </source>" >> $name
  echo "    <size>" >> $name
  echo "        <width>100</width>" >> $name
  echo "        <height>100</height>" >> $name
  echo "        <depth>3</depth>" >> $name
  echo "    </size>" >> $name
  echo "    <segmented>0</segmented>" >> $name
  echo "    <object>" >> $name
  echo "        <name>apple</name>" >> $name # change name
  echo "        <pose>Unspecified</pose>" >> $name
  echo "        <truncated>0</truncated>" >> $name
  echo "        <difficult>0</difficult>" >> $name
  echo "        <bndbox>" >> $name
  echo "            <xmin>1</xmin>" >> $name
  echo "            <ymin>1</ymin>" >> $name
  echo "            <xmax>100</xmax>" >> $name
  echo "            <ymax>100</ymax>" >> $name
  echo "        </bndbox>" >> $name
  echo "    </object>" >> $name
  echo "</annotation>" >> $name
done
echo "All done"
exit 0