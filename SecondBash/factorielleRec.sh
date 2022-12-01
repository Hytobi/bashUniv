#!/bin/bash

#Programme qui calcule une factoriel de facon recursive

if [ $# -eq 1 ]
then
    if [ $1 -gt 0 ]
    then
        function fact()
        {
            if [ $1 -eq 1 ]
            then
                echo 1
            else
                echo $(($1 * $(fact $(($1 - 1)))))
            fi
        }
        echo "Factorielle de $1 = $(fact $1)"
    else
        echo "Le nombre doit etre positif"
    fi
else
    echo "Il faut un parametre"
fi