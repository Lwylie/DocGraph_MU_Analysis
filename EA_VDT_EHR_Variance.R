#Load relevant libraries	
library(ggplot2)

#Load datasets into dataframes
S1EP <- as.data.frame(read.csv("G:/Learning/FredTrotter/MU_EHR_result_replication/view_for_stats_S1_EP.csv"))
S1EH <- as.data.frame(read.csv("G:/Learning/FredTrotter/MU_EHR_result_replication/view_for_stats_S1_EH.csv"))
S2EP <- as.data.frame(read.csv("G:/Learning/FredTrotter/MU_EHR_result_replication/view_for_stats_S2_EP.csv"))
S2EH <- as.data.frame(read.csv("G:/Learning/FredTrotter/MU_EHR_result_replication/view_for_stats_S2_EH.csv"))

#Annoyingly, there is no good way to convert a factor(as r imports the eaccess_c and and VDT_c variables) into a double, so we coerce them
#Note: this will coerce NULL values into NA
S1EH$eaccess_c <- as.numeric(as.character(S1EH$eaccess_c))
S1EP$eaccess_c <- as.numeric(as.character(S1EP$eaccess_c))
S2EP$VDT_c <- as.numeric(as.character(S2EP$VDT_c))
S2EH$VDT_c <- as.numeric(as.character(S2EH$VDT_c))

