




libraries <- c('readxl', 'DiagrammeR', 'dplyr', 'ggplot2',
               'Gmisc','glue','htmlTable','grid', 'magrittr',
               'gridtext')
lapply(libraries,require, character.only = TRUE)

install.packages('gridtext')
