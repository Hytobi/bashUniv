#!/bin/bash

#Ecrire un programme shell permettant de supprimer tous les fichiers se terminant par les caractères
#% ou ~ et de comresser tous les autres fichiers à l'aire de la commande gzip.
#Ce nettoyage s'effectue sur un répertoire passé en paramètre ainsi que sur tous ses sous-répertoires.
#Syntaxe : clean <repertoire>
#Remarque : La commande gzip remplacera le fichier file par une version compressée du fichier de
#nom file.gz. La commande clean devra éviter de compresser les fichiers déjà compressés.

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        cd $1
        for i in `ls`
        do
            if [ -d $i ]
            then
                ./netoyage.sh $i
            else
                if [ ${i: -1} = "%" -o ${i: -1} = "~" ]
                then
                    rm $i
                else
                    if [ ${i: -3} != ".gz" ]
                    then
                        gzip $i
                    fi
                fi
            fi
        done
    else
        echo "Le parametre doit etre un repertoire"
    fi
else
    echo "Il faut un parametre"
fi


