#!/bin/bash

#make a number of data files
#	use 'equal-width to make numeric sorting occur in shell/ASCII context'  
NUM_DATA_FILE_IDXS=100
for DATA_FILE_IDX in `seq  --equal-width  1 $NUM_DATA_FILE_IDXS`; do 

	#define the data file
	DATA_FILE="data.${DATA_FILE_IDX}.dat" ; 
	#delete it in case this script is run multiple times
	rm -f ${DATA_FILE} ; 

	NUM_DATA_ENTRIES=100;
	#for each data file generate some random data
	for I in `seq 1 ${NUM_DATA_ENTRIES}`; do
		echo ${RANDOM} >> ${DATA_FILE} ; 
	done ;
	 

done ;



