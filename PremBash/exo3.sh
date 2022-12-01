#!/bin/bash

case "$2" in
x) expr $1 \* $3 ;;
/) expr $1 / $3 ;;
+) expr $1 + $3 ;;
-) expr $1 - $3 ;;
%) expr $1 % $3 ;;
*) echo "operateur non valide" ;;
esac