#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "total: $SUM"
echo "args file name $0"
echo "no of args passed $#"
echo "all args passed $@"