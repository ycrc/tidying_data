#!/bin/bash
# Solution 1
cat <( awk -v OFS="," 'NF!=0 {print $1,$2,$3}' toxoplasmosis.txt ) \
    <( awk -v OFS="," 'NF!=0 {print $4,$5,$6}' toxoplasmosis.txt ) \
    > toxoplasmosis_fixed.txt
sed -i '1s/^/Cases,Number_Tested,Rainfall\n/' toxoplasmosis_fixed.txt
