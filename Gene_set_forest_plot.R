#############
#Construction of forest plot for MAGMA gene-set association analysis of high pLI genes and FMRP targets
#William Reay (2019)
#############

#Load dependencies
library(readxl)
library(ggplot2)

#Load data for forest plot
pLI_forest_plot_input <- read_excel("Figures/pLI_forest_plot_input.xlsx")

FP = ggplot(data=pLI_forest_plot_input,
           aes(x = Group,y = Beta, ymin = lower, ymax = upper ))+
  geom_pointrange(aes(col=Group))+
  geom_hline(aes(fill=Group),yintercept =0, linetype=2)+
  xlab('Phenotype')+ ylab("MAGMA beta coefficient (+/- SE)")+
  geom_errorbar(aes(ymin=lower, ymax=upper,col=Group),width=0.2,cex=0.5)+ 
  facet_wrap(~Condition,strip.position="left",nrow=9,scales = "free_y") +
  theme(plot.title=element_text(size=16,face="bold"),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.text.x=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"),
        legend.position = "none",
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_text(size = 11, face = "bold"),
        axis.title.y = element_text(size = 11, face = "bold"),
        panel.border = element_rect(colour = "black", fill=NA, size=1))+
  coord_flip() 


FP_2 = ggplot(data=FMRP_forest_plot_input,
            aes(x = Group,y = Beta, ymin = lower, ymax = upper ))+
  geom_pointrange(aes(col=Group))+
  geom_hline(aes(fill=Group),yintercept =0, linetype=2)+
  xlab('Phenotype')+ ylab("MAGMA beta coefficient (+/- SE)")+
  geom_errorbar(aes(ymin=lower, ymax=upper,col=Group),width=0.2,cex=0.5)+ 
  facet_wrap(~Condition,strip.position="left",nrow=9,scales = "free_y") +
  theme(plot.title=element_text(size=16,face="bold"),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank(),
        axis.text.x=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"),
        legend.position = "none",
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.background = element_blank(),
        axis.title.x = element_text(size = 11, face = "bold"),
        axis.title.y = element_text(size = 11, face = "bold"),
        panel.border = element_rect(colour = "black", fill=NA, size=1))+
  coord_flip() 
