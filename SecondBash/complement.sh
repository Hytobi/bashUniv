#!/bin/bash

# Programme qui affiche le nombre de fichier du repertoir courant ne figurant pas dans la liste des parametre de la commande


if [ $# -gt 0 ]
then
    for i in `ls`
    do
        for j in $*
        do
            [ $i = $j ] && continue 2
        done
        echo $i
        cd $i
        a=`ls -l | grep -v ^d | wc -l`
        echo `expr $a - 1 `
        cd ..
    done
else
    echo "Il faut au moins un parametre"
fi
