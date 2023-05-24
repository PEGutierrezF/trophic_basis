



# ---------------------------------------------
# Secondary production plots
# 18 May 2023
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
# 



# cleans global environment
rm(list = ls())



tb <- "trophic_basis.xlsx"
excel_sheets(path = tb)



df <- read_excel(path = tb, sheet = "sec_pro")  
# boxplot  ----------------------------------------------------------------
# Create separate data frames for each taxa
neohagenulus_data <- df[df$taxa == "Neohagenulus", ]

# Order the levels of the "periodo" variable and change the labels
neohagenulus_data$periodo <- factor(neohagenulus_data$periodo, 
                                    levels = c("pre", "post"),
                                    labels = c("Pre-hurricane", "Post-hurricane"))

# Set up the plot
ggplot(neohagenulus_data, aes(x = periodo, y = mean, 
                                      color = periodo))+
  geom_point(size = 8) +
  # Add error bars for standard deviation
  geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), size=1.5, width = 0.01) +
  # Customize appearance
  labs(x = "Period", y = expression("Secondary Production (mg m"^-2*" mo"^-1*")")) +
  scale_color_manual(values = c("Pre-hurricane" = "#009E73", "Post-hurricane" = "#56B4E9")) +
  ylim(0,60) +
  theme_bw() +
  
  theme(legend.position = "none") +
  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black")) #subaxis y
  




# Cloeodes ----------------------------------------------------------------
cloeodes_data <- df[df$taxa == "Cloeodes", ]

# Order the levels of the "periodo" variable and change the labels
cloeodes_data$periodo <- factor(cloeodes_data$periodo, 
                                    levels = c("pre", "post"),
                                    labels = c("Pre-hurricane", "Post-hurricane"))
# Set up the plot
ggplot(cloeodes_data, aes(x = periodo, y = mean, 
                              color = periodo))+
  geom_point(size = 8) +
  # Add error bars for standard deviation
  geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), size=1.5, width = 0.01) +
  # Customize appearance
  labs(x = "Period", y = expression("Secondary Production (mg m"^-2*" mo"^-1*")")) +
  scale_color_manual(values = c("Pre-hurricane" = "#009E73", "Post-hurricane" = "#56B4E9")) +
  ylim(0,25) +
  theme_bw() +
  
  theme(legend.position = "none") +
  
  theme(axis.title.x = element_text(size = 16, angle = 0)) + # axis x
  theme(axis.title.y = element_text(size = 16, angle = 90)) + # axis y
  theme(axis.text.x=element_text(angle=0, size=14, vjust=0.5, color="black")) + #subaxis x
  theme(axis.text.y=element_text(angle=0, size=14, vjust=0.5, color="black")) #subaxis y


