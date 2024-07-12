#!/bin/bash
## Created by Bappa Ghosh for 3D heatmap from
## In the working directory, make sure to have a directory with name : plots  # USE mkdir plots

file1=1ExM_a
file2=2ExM_b
file3=3ExM_c
file4=4ExM_d
file5=5ExM_46
file6=6ExM_72_2
file7=7ExM_72
merged_file1=merged_all_ExM
#merged_file2=merged_last3_ExM
#merged_file3=merged_except5_ExM
#merged_file4=merged_last2_ExM

##for i in *.matrix.cool;
##do
##        filebase="$(basename  $i .matrix.cool)"	
##        hicConvertFormat -m ${i} -o ${filebase}.h5 --inputFormat cool --outputFormat h5
##        wait
##done

####1 To merge multiple .h5 files, use: 
hicSumMatrices --matrices ${file1}.h5 ${file2}.h5 ${file3}.h5 ${file4}.h5 ${file5}.h5 ${file6}.h5 ${file7}.h5 --outFileName ${merged_file1}.h5
#hicSumMatrices --matrices ${file1}.h5 ${file2}.h5 --outFileName ${merged_file1}.h5
#wait
#hicMergeMatrixBins --matrix ${merged_file1}.h5 --numBins 100 --outFileName ${merged_file1}.100bins.h5
wait
#hicPlotMatrix --matrix ${merged_file1}.100bins.h5 --log1p --dpi 600 --clearMaskedBins --chromosomeOrder chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chrX chrY --colorMap jet --title "Hi-C matrix for ${merged_file1}" --outFileName plots/${merged_file1}.png

######2 
##hicSumMatrices --matrices ${file5}.h5 ${file6}.h5 ${file7}.h5 --outFileName ${merged_file2}.h5
##wait
##hicMergeMatrixBins --matrix ${merged_file2}.h5 --numBins 100 --outFileName ${merged_file2}.100bins.h5
##wait
##hicPlotMatrix --matrix ${merged_file2}.100bins.h5 --log1p --dpi 600 --clearMaskedBins --chromosomeOrder chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chrX chrY --colorMap jet --title "Hi-C matrix for ${merged_file2}" --outFileName plots/${merged_file2}.png
##
######3 
##hicSumMatrices --matrices ${file1}.h5 ${file2}.h5 ${file3}.h5 ${file4}.h5 ${file6}.h5 ${file7}.h5 --outFileName ${merged_file3}.h5
##wait
##hicMergeMatrixBins --matrix ${merged_file3}.h5 --numBins 100 --outFileName ${merged_file3}.100bins.h5
##wait
##hicPlotMatrix --matrix ${merged_file3}.100bins.h5 --log1p --dpi 600 --clearMaskedBins --chromosomeOrder chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chrX chrY --colorMap jet --title "Hi-C matrix for ${merged_file3}" --outFileName plots/${merged_file3}.png
##
######4  
##hicSumMatrices --matrices ${file6}.h5 ${file7}.h5 --outFileName ${merged_file4}.h5
##wait
##hicMergeMatrixBins --matrix ${merged_file4}.h5 --numBins 100 --outFileName ${merged_file4}.100bins.h5
##wait
##hicPlotMatrix --matrix ${merged_file4}.100bins.h5 --log1p --dpi 600 --clearMaskedBins --chromosomeOrder chr1 chr2 chr3 chr4 chr5 chr6 chr7 chr8 chr9 chr10 chr11 chr12 chr13 chr14 chr15 chr16 chr17 chr18 chr19 chrX chrY --colorMap jet --title "Hi-C matrix for ${merged_file4}" --outFileName plots/${merged_file4}.png
