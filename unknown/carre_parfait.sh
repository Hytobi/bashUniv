#!/bin/bash

# see if integer=$1 is a perfect square

# check for arguments
test [ $# -eq 0 ] && echo "Usage: $0 integer" && exit 1 


# check if integer is a perfect square
integer=$1
testSquare=1
index=1

while [ $test -le $integer ]; do
    testSquare=$(($index * $index))
    index=$(($index + 1))
    test $testSquare -eq $integer && echo "$integer is a perfect square" && exit 0
done

echo "$integer is not a perfect square"
exit 0