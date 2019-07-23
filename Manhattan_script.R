#############
#Manhattan and qqplots for MAGMA gene-based analyses - sample commands for figures
#William Reay (2019)
#############

#Load qqman package
library(qqman)


#Highlight SNPs on Manhattan


Highlight_MAGMA_manhattan <- function(x) {
            manhattan(x, snp = "SNP", chr = "CHR", bp = "BP", p = "P", 
            suggestiveline = F, genomewideline = -log10(2.71e-6),
            highlight = genesOfInterest.v, cex.axis = 0.45)
}

#Highlight SNPs only significant in BIP + SZ meta-analysis

BIP_vs_SZ <-read.table("~/Desktop/Pairwise_SZ_2018_meta/Pairwise_meta_analyses/BIP_vs_SZ/Genes_only_sig_in_BIP_vs_SZ_meta.txt", header = T)
genesOfInterest.v <- BIP_vs_SZ$Genes

BIP_SZ <- read.table("~/Desktop/Pairwise_SZ_2018_meta/Pairwise_meta_analyses/BIP_vs_SZ/BIP_SZ_Manhattan.txt", header = T)

