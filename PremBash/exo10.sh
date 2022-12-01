#!/bin/bash

#Étant donné un entier n fourni en argument de la commande, écrire un script permettant d’afficher
#une pyramide constituée de n lignes de lettres

#Exemple : ./exo10.sh 5
#   A
#  ABA
# ABCBA
#ABCDCBA

if [ $# -ne 1 ] ; then echo "Entrer une valeur en argument" ; exit 1 ; fi
lettre=A
inter=A
for (( j=$1; j>0; j-- ))
    do
        echo -n " "
    done
echo $lettre
for (( i=1; i<$1; i++ ))
do
    for (( j=$1 ; j>$i ; j-- ))
    do
        echo -n " "
    done
    
    lettre=$(echo $lettre | tr A-Z B-ZA)
    inter=$inter$lettre
    
    echo -n $inter
    reverse=$(echo $inter | rev)
    echo -n ${reverse:1}
    echo
done

