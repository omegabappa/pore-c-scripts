#!/bin/bash

merged_file=file_1_2_3

## for s custome tracks file, this will plot the  TADs.
for n in $(cat chr_length)
do
	chr=$(echo $n | cut -d ":" -f 1)
	length=$(echo $n | cut -d ":" -f 2)
	hicPlotTADs --tracks tracks.ini --region chr${chr}:0-${length} -o ExM_chr${i}_${merged_file}.png
done
