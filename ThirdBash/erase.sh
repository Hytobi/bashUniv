#!/bin/bash

# Programme qui efface un fichier passé en parametre


# Teste si il y a un parametre
test $# -ne 1 && echo "Il faut un parametre" && exit 1

# Teste si le fichier existe
test ! -f $1 && echo "Le fichier n'existe pas" && exit 1

# Teste si le repertoire existe
test ! -d $HOME/.poubelle && mkdir $HOME/.poubelle

#Sinon il existe et on le deplace dans le repertoire .poubelle
mv $1 $HOME/.poubelle
echo "Le fichier $1 a été déplacé dans le répertoire .poubelle"