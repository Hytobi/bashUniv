#!/bin/bash

for i in `seq 2 $[$1-1]`  # (( i=2; i<$1; i++ ))
do
if [[ $[$1%$i] == 0 ]] ; then echo "$1 n'est pas premier" ; exit 0 ; fi
done;
echo "$1 est un nombre premier"