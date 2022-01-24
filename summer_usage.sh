#!/bin/bash

#iterate over data files and write output
for D in `find data_files/*.dat`; do
    python3 summer.py ${D} ${D}.sum.txt
    done ;
#observe the hash of output
cat data_files/*.sum.txt|md5sum
#delete output
rm -f  data_files/*.sum.txt

#repeat but using xargs (here "{}" is like x in f(x) )
find data_files/data.*.dat | xargs -I {} python3 summer.py {} {}.sum.txt
cat data_files/*.sum.txt|md5sum

echo "The md5sum hashes match, so the output files are equivalent." ; 

#now compute a grand total
cat data_files/*.sum.txt | python3 summer.py /dev/stdin /dev/stdout > grand_total.txt
GRAND_TOTAL=`cat grand_total.txt`;
echo "The grand total is ${GRAND_TOTAL} !" ; 
rm -f  data_files/*.sum.txt
