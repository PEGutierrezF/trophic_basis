



# ---------------------------------------------
# Trophic basis of production
# 16 May 2023
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  









# cleans global environment
rm(list = ls())



tb <- "trophic_basis.xlsx"
excel_sheets(path = tb)




# QPA February 17  --------------------------------------------------------
qpb_Feb17 <- read_excel(path = QPB_data, sheet = "QPB_Feb17")  
qpb_Feb17 <- qpb_Feb17 %>% select(taxa,mean_C,sd_C,mean_N,sd_N) %>% na.omit()
