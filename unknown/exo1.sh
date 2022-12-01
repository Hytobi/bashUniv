#!/bin/bash

#reverse the order of the arguments
test $# -ne 0 && a="$1" && shift && $0 $@ && echo $a
exit 0