



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
tb_all <- read_excel(path = tb, sheet = "Sheet1")  
