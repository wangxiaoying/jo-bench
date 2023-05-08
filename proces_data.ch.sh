#!/bin/bash

mkdir -p csv_ch

for t in ./csv/*; do
	if [ -d $t ]; then
		name=$(basename $t)
		echo "into " $name
		mkdir -p ./csv_ch/$name
		for f in $t/*; do
			if [ -f $f ]; then
				echo $f
				sed -e 's/\\\"/""/g' -e 's/\\"/""/g' -e 's/\\"//g' $f > ./csv_ch/$name/${f##*/}
			fi
		done
	else
		echo $t
		sed -e 's/\\\"/""/g' -e 's/\\"/""/g' -e 's/\\"//g' $t > ./csv_ch/${t##*/}
	fi
done
