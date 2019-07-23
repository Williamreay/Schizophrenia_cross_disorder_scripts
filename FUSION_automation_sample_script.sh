#!/bin/bash

#Sample script which outlined the commands used for performing TWAS
#William Reay 2019

for i in $(cat Chr_IDs.txt);
do
Rscript FUSION.assoc_test.R \
--sumstats ~/Desktop/Pairwise_SZ_2018_meta/TWAS/Munged_summary_stats/FINAL_munged_formatted_SZ_2018 \
--weights ./WEIGHTS/CMC.BRAIN.RNASEQ.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i --out ~/Desktop/Pairwise_SZ_2018_meta/TWAS/SZ_${I}_DLPFC.txt;
done
