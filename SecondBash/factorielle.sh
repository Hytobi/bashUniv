#!/bin/bash

#Programme qui calcule une factoriel de facon itérative

if [ $# -eq 1 ]
then
    if [ $1 -gt 0 ]
    then
        res=1
        for (( i=1; i<=$1; i++ ))
        do
            res=$(($res * $i))
        done
        echo "Factorielle de $1 = $res"
    else
        echo "Le nombre doit etre positif"
    fi
else
    echo "Il faut un parametre"
fi