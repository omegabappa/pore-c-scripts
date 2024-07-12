#!/bin/bash

merged_file=file_1_2_3

#for i in {5,10,50,100,500,1000,5000,10000};
for i in {10000,5000,1000,500,100,50,10,5};
do

##Change the ExM  file witrh particular resolution and insulation score file : FILE NAME: T47D_base.ini	>> T47D.ini
sed "s/RESOLUTION/$i/g" tracks_base.ini  > tracks.ini

	for n in $(cat chr_length)
	do
		chr=$(echo $n | cut -d ":" -f 1)
		length=$(echo $n | cut -d ":" -f 2)
	
		hicPlotTADs --tracks tracks.ini --region chr${chr}:0-${length} -o chr${chr}_${merged_file}.${i}Kb_corrected_ICE.png
	done
done
