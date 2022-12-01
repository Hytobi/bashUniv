#!/bin/bash

# Programme qui affiche selon les parametres fournis affiche le contenu d'un fichier ou le contenu d'un repertoire

# Teste si il y a au moins un parametre
test $# -lt 1 && echo "Il faut au moins un parametre" && exit 1

for i in $*
do
    # Séparation entre les fichiers affichés
    echo "----------------------------------"
    # Teste si le fichier est un repertoire, si oui on affiche son contenu
    test -d $i && echo "Le fichier $i est un repertoire, il contient les fichiers suivant :" && ls $i && continue 1

    # Teste si le fichier existe
    test ! -f $i && echo "Le fichier $i n'existe pas" && continue 1

    #Sinon il existe et on l'affiche page par page
    more $i
done