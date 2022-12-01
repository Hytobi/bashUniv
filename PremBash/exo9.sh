#!/bin/bash

#Écrire un script permettant de déterminer le nombre de voyelles (a, e, i, o, u et y) 
#d’un mot passé en argument de la commande.

nb=0

for i in `echo $1 | grep -o .`

do
    case $i in
        a|e|i|o|u|y) nb=$[$nb+1] ;;
    esac
done
echo "Le mot $1 contient $nb voyelles"
