



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



tb_all <- read_excel(path = tb, sheet = "energyflow")  

# Create a new column 'prop' based on the multiplication
tb_all$prop <- tb_all$sec_pro * tb_all$perc_iso_sig


# Create a new column 'contrib' based on conditional division
tb_all$contrib <- ifelse(tb_all$food_res == "leaf", (tb_all$prop / 0.1) * 0.5,
                  ifelse(tb_all$food_res %in% c("algae", "biofilm"), 
                                (tb_all$prop / 0.3) * 0.5, NA))

tb_all



