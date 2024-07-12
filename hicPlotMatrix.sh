#!/bin/bash
## Created by Bappa Ghosh 

merged_file=mat_1_2_3


for i in {10,50,500,1000,5000,10000};
do


## check
for file_name in "${merged_file}.${i}Kb_corrected_ICE.h5"; do
    if [ -e "$file_name" ]; then
        echo "$file_name exists."
    else
        echo "$file_name does not exist."
    fi
done


hicPlotMatrix --matrix ${merged_file}.${i}Kb_corrected_ICE.h5 --log1p --dpi 600 --clearMaskedBins --chromosomeOrder chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chr20 chr21 chr22 chrX chrY --colorMap jet --title "Pore-C matrix for ${merged_file}.${i}Kb_corrected_ICE" --outFileName plots/${merged_file}.${i}Kb_corrected_ICE.png


## for each chr
	for j in {1..20}
	do
	hicPlotMatrix -m ${merged_file}.${i}Kb_corrected_KR.h5  -o plots/hic_regionplot_${merged_file}_${i}Kb_region_${j}_corrected_KR.png --region ${j} --log1p
		wait
	done
done
