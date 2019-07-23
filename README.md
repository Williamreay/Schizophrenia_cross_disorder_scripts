# Schizophrenia_cross_disorder_scripts
The scripts herein detail the commands utilised for the analyses and figures described in Reay &amp; Cairns 2019: Pairwise common variant meta-analyses of schizophrenia with other psychiatric disorders reveals shared and distinct gene and gene-set associations

The sample scripts are as follows:

1) MAGMA_automation.py:
  Script for performing the MAGMA gene-based and set-based association, This script assumed MAGMA is either installed in the directory it is run from or accessible as PATH variable. Requires the following command line inputs:  
  
 --gwasfile, GWAS summary statistics in the following format - SNP, CHR, BP, P   <br />
 --geneloc, Gene location file - ID, BP1, BP2   <br />
 --phenotype, GWAS phenotype name   <br />
 --bfile, Reference population plink binary fileset - .bed, .bim + .fam  <br />
 --samplesize, Sample size which GWAS performed on - cases + controls  <br />
 --genesets, Input pathways in standard MSigDB format, see MAGMA manual for further clarification  
Please refer to the MAGMA manual for more information


2) FUSION_automation_sample_script.sh:
These are the command line inputs used for the FUSION analyses in the manuscript

3) Circular_manhattan.R:
Commands used to construct the circular Manhattan plots in Figure 1

4) Gene_set_forest_plot.R:
Commands used to create the forest plots in Figure 2

5) Manhattan_script.R:
Sample commands used to create the Manhattan plots with a subset of genes highlighted (Figure 3)

