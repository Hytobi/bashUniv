#!/bin/bash

#Programme qui protege un fichier passé en parametre

# Teste si il y a un parametre
test $# -ne 1 && echo "Il faut un parametre" && exit 1

# Teste si le fichier existe
test ! -f $1 && echo "Le fichier n'existe pas" && exit 1

#Sinon il existe et on le protège en enlevant les droit groupe et autres
chmod go-rwx $1
echo "Le fichier $1 a été protégé"
