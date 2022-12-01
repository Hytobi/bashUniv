#!/bin/bash

#test si $# est different de 1
test $# -ne 1 && echo "usage: $0 <integer>" && exit 1
#test si $1 est un nombre : la on fait (.....) OU echo ce n'est pas...
expr "$1" + 0 &> /dev/null
test $? -eq 2 && echo "$1 n'est pas un nombre" && exit 1 
#expr retourn 0 si ca s'est bien passé, 1 si le res est null, 2 si il y a une erreur de syntaxe

i=0
cpt=1
while [ $i -lt $1 ]
do
    cpt=$[$cpt+1]
    i=$[$cpt*$cpt]
done

if [ $i -eq $1 ] ; 
then echo "$1 est un carré parfait (carre de $cpt)" ; 
else echo "$1 n'est pas un carré parfait" ; fi