#!/bin/bash
file1=base.matrix
file2=target.matrix

for i in 100 500 1000 10000
do

hicNormalize -m ${file1}.${i}Kb.h5 ${file2}.${i}Kb.h5 -n smallest -o ${file1}.${i}Kb.norm.h5 ${file2}.${i}Kb.norm.h5

hicCorrectMatrix correct --matrix ${file2}.${i}Kb.norm.h5  --outFileName ${file2}.${i}Kb.norm_ICE.h5   --filterThreshold -1.5 2.0 --correctionMethod ICE

hicFindTADs -m ${file1}.${i}Kb.norm_ICE.h5 --outPrefix ${file1}.${i}Kb -p 50 --correctForMultipleTesting fdr

hicFindTADs -m ${file2}.${i}Kb.norm_ICE.h5 --outPrefix ${file2}.${i}Kb -p 50 --correctForMultipleTesting fdr

hicDifferentialTAD -tm ${file2}.${i}Kb.norm_ICE.h5 -cm ${file1}.${i}Kb.norm_ICE.h5 -td ${file2}.${i}Kb_domains.bed -o differential2 -t 55 -mr all

done

hicPlotTADs --tracks tracks.ini -o target_region.png --region chr11:8000000-10500000

