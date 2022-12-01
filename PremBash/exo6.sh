#!/bin/bash

# Écrire un script qui permet d’afficher l’ensemble des arguments passés sur la ligne de commande.

for i in $*
do
    echo $i
done