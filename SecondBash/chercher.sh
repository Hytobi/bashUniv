#!/bin/bash


#Ecrire un programme shell réalisant une recherche récursive d'un fichier ou d'un répertoire. 
#La syntaxe de cette commande devra être la suivante :
#cherche <type> <repertoire><nom>
#où type est f ou d suivant que l'on cherche respectivement un fichier ou un répertoire ;
#<repertoire> est le nom du répertoire où commence la recherche ;
#<nom> est le nom du fichier ou du répertoire à trouver.

#Exemple : chercher f /home/etudiant/tp1 fichier1

if [ $# -eq 3 ]
then
    cd $2
    if [ $1 = "f" ]
    then
        if [ -f $3 ]
        then
            echo "Le fichier $3 existe"
        else
            echo "Le fichier $3 n'existe pas"
        fi
    elif [ $1 = "d" ]
    then
        if [ -d $3 ]
        then
            echo "Le repertoire $3 existe"
        else
            echo "Le repertoire $3 n'existe pas"
        fi
    else
        echo "Le premier parametre doit etre f ou d"
    fi
else
    echo "Il faut 3 parametres"
fi