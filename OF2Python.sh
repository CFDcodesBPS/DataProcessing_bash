#!/bin/sh

tail -n+23 $1 > temp1
sed '/boundaryField/, $d' temp1 > temp2
sed '$d' temp2 | sed '$d' | sed '$d' > temp3
cat temp3 | tr -d '()' > p_$1

rm temp1 temp2 temp3

