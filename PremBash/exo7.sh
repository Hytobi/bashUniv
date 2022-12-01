#!/bin/bash

#Écrire un script qui affiche toutes les puissances de 2, jusqu’à une valeur maximale passé en 
#argument de la commande. Le calcul des puissances de 2 sera effectué par multiplications successives.

#Exemple : ./exo7.sh 1000

for (( i=1; i<=$1; i=i*2 ))
do
    echo $i
done
