#!/bin/bash
#Les 100 premier nombre premier

echo "2"
nbpremier=1
i=1
while [ $nbpremier -lt 100 ]
do
    i=`expr $i + 2`
    for j in `seq 3 $[$i-1]`
    do
        if [ $[$i%$j] -eq 0 ]
        then
            continue 2
        fi
    done
    nbpremier=`expr $nbpremier + 1`
    echo $i
done