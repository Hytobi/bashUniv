#!/bin/bash

if [ $2 > $3 ]
then
if [ $2 > $1 ]
then
echo "<$2>"
else
echo "<$1>"
fi;
else
if [ $3 > $1 ]
then
echo "<$3>"
else
echo "<$1>"
fi;
fi;