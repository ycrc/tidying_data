#!/bin/bash
# Solution 2: doesn't guarantee order but might be faster
tr -s ' ' , < toxoplasmosis.txt | tee >(cut -s -d, -f2-4) \
                                      >(cut -s -d, -f5-7) >/dev/null | \
sed '1s/^/Cases,Number_Tested,Rainfall\n/' > toxoplasmosis_fixed.txt
