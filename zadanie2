#!/bin/bash

function daleko {
x=$1
for ((i=0; i<=arg1; i++))
do
if [ $x -ne 0 ]; then
        echo -n " -"
fi

done
}

function wys {
zawartosc=$(ls -A)
for y in $zawartosc
do
        daleko $1
        if [ -d "$y" ]; then #wyarezenie istnieje i jest kat
                echo "$y" #wys kat i przejdz do niego
                cd "$y"
                wys $(($1+1)) #+1 do wys funkcji
                cd .. #cofnij sie
                else
                echo "$y" #inaczej wys plik
        fi
done
}
wys 0
