#!/bin/bash
#Program wyszukuje pliki C i konwertuje je
x=$(ls -A )
for a in $x
do
	ext="${a#*.}" && name="${a%%.*}"
	if [ "$ext" = "c" ]; then
		cc $a -o $name
	fi
done
