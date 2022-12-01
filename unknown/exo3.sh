#!/bin/bash

# liste de fichiers
test $# -ne 1  && echo "usage: $0 <repertoire>" && exit 1
test \! -d $1 && echo "$1 n'est pas un repertoire" && exit 1

echo "$1 contient les fichiers suivants:"
ls $1
