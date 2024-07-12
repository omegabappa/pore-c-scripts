#!/bin/bash
## Created by Bappa Ghosh 

merged_file=file_1_2_3


for i in {10,50,100,500,1000,5000,10000};
do
	hicMergeMatrixBins --matrix ${merged_file}.h5 --numBins ${i} --outFileName ${merged_file}.${i}Kb.h5
	wait
done
