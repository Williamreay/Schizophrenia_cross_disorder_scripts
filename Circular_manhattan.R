#############
#Circular manhattan script for significant SZ genes in other disorders
#William Reay 2019
#############

#Load CMplot dependency
library("CMplot")

#Import data for first circos
library(readxl)
Circos_1 <- read_excel("~/Desktop/Pairwise_SZ_2018_meta/Figures/Circos_1.xlsx")

Plot_1 <- CMplot(Circos,plot.type="c",r=0.4,col=c("dodgerblue4","deepskyblue"), chr.labels=paste(c(1:22),sep=""),threshold=2.7e-6,cir.chr.h=1.5,amplify=TRUE,threshold.lty=2,threshold.col="red",signal.line=1,signal.col=c("red"),chr.den.col="grey",bin.size=1e6,outward=TRUE,file="tiff",memo="",dpi=500,file.output=TRUE,verbose=TRUE, LOG10 = TRUE, cir.band = 2, ylim = c(0,12))



