#!/bin/sh

##Takes UPrime2Mean file from OpenFOAM and extracts only the internal Field values of R into a text file R
##UPrime2Mean file outputted by OpenFOAM must be present in the same directory as this file
tail -n+23 UPrime2Mean > temp1
sed '/boundaryField/, $d' temp1 > temp2
sed '$d' temp2 | sed '$d' | sed '$d' > temp3

cat temp3 | tr -d '()' > R

rm temp1 temp2 temp3

