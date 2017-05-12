#!/bin/bash
function spr {
dane=$1
if [ "$#" -eq "1" ]; then
	echo "skrypt posiada jeden parametr"
	x=${#dane}
	pierwsza=${dane:0:1}
	druga=${dane:1:2}
	if [ "$x" -ge "5" ]; then
	echo "parametr zawiera piec lub wiecej znakow"
	else
	echo "parametr zawiera mniej niz piec znakow"
	fi
	if [[ "$dane" =~ ^s[0-9]+([A-Z])?[a-z]+ ]]; then
	echo "Pasuje do formatu"
	liczliczby $1
	choinka $1
	else
	echo "Nie pasuje do formatu"
	fi
else
	echo "blad skryptu"
fi

}
function liczliczby {
dane=$1
d=${#dane}
l=0
for ((a=1; a<=$d; a++));
do
r=`echo $dane | cut -c"$a"`
if [[ "$r" =~ [0-9] ]]
then
tab[$l]="$r"
l=$((l+1))
fi
done
}
function choinka {
dane=$1
q=$((l-1))
v=0
ciag=${dane:1:y-1}
y=${#dane}
znak=${dane:y-1}
for ((i=1; i<=l; i++))
do
	for ((k=0; k<((l-i)); k++))
	do echo -n "$znak"
	done
	for ((g=0; g<((i*2)-1); g++))
	do
	if [ "$v" -gt "$q" ]; then
	v=0
	fi
	echo -n "${tab[$v]}"
	v=$((v+1))
	done
	for ((j=0; j<((l-i)); j++))
	do echo -n "$znak"
	done
	echo " "
done
echo " "
}
spr $1
