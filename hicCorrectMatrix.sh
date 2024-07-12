#!/bin/bash
## Created by Bappa Ghosh 

merged_file=file_1_2_3

for i in {10,50,100,500,1000,5000,10000};
do
	##DO DIAGOSNOS FIRST , KEEP CORRECT COMMENTED, RUN AFTER DETERMINING DIAGONOS
	##1	
	hicCorrectMatrix diagnostic_plot --matrix ${merged_file}.${i}Kb.h5    -o correction_diagonos/Corr_diag_${merged_file}.${i}Kb.png	

	##2 Check the files generated in ##1 and run the below line by comenting out.. (comment in the above line)d
	hicCorrectMatrix correct --matrix ${merged_file}.${i}Kb.h5  --outFileName ${merged_file}.${i}Kb_corrected_KR.h5  --filterThreshold -1.5 2.0
	
	wait
done
