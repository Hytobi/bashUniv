#!/bin/bash

#Un entier strictement positif x est un nombre factoriel s’il existe un autre entier y tel que x = y !.
#Écrire un script qui étant donné un entier x, vérifie si x est un nombre factoriel, et, si c’est le cas affiche la
#valeur de y. L'entier x est passé en argument de la commande.


i=1
a=1
while [ $i -le $1 ]
do
    if [ $1 -eq $i ]
    then
        echo "Le nombre $1 est un nombre factoriel, c'est $a !"
        exit 0
    fi
    a=$[$a+1]
    i=$[$i*$a]
done
echo "Le nombre $1 n'est pas un nombre factoriel"