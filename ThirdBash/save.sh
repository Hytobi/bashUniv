#!/bin/bash

# Programme qui sauvegarde le fichiers d'un répertoire source dans un répertoire destinataire. 

# Exemple : ./save.sh /home/etudiant/Documents /home/etudiant/Documents/backup
# Generale : save [-i] <source> <destination>

#Le paramètre <source> permet à l'utilisateur de désigner un ou plusieurs fichiers à sauvegarder. 
#Exemples : 
    #1) save *.c tmp
    #Copie tous les fichiers d'extension ''.c'' du répertoire courant vers le répertoire tmp. (Une erreur si tmp n'existe pas)
    #2) save prog.c tmp/rep.c
    #Copie le fichier prog.c dans le répertoire tmp/rep.c. Une erreur doit être signalée si le fichier prog.c n'existe pas.


#Ecrire la commande save sans l'option

# Teste si il y a au moins 2 parametres
test $# -lt 2 && echo "Il faut au moins 2 parametres" && exit 1

#par defaut on ne demande pas de confirmation ie cas sans le -i
option=0

#si le premier parametre est -i on active la confirmation
test "$1" == "-i" && option=1 && shift

chaine=""
while [ $# != 1 ]
do
    chaine="$chaine $1"
    shift
done
if [ $option -eq 0 ] ; then cp $chaine $1 ; else cp -i $chaine $1 ; fi
echo "Les fichiers $chaine ont été copiés dans le répertoire $1"

