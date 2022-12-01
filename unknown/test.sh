#!/bin/bash

a=$#
var=$1
shift
test $a -eq "0" || $0 $@ && echo $var