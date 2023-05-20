library(Gmisc, quietly = TRUE)
library(glue)
library(htmlTable)
library(grid)
library(magrittr)


grid.newpage()
Leopto <- boxGrob("Leptophlibiidae",
                 x = 0.5, y = .9)
Leopto


Leaf <- boxGrob("Leaf litter",
                x = 0.1, y = .1)
Leaf

Biofilm <- boxGrob("Biofilm",
                x = 0.5, y = .1)
Biofilm

Algae <- boxGrob("Algae",
                   x = 0.9, y = .1)
Algae

# Connect the boxes and print/plot them
connectGrob(Leaf, Leopto, "vertical", 
            lty_gp = gpar(lwd = 5, col = "black", fill = "black"))
connectGrob(Biofilm, Leopto, "vertical")
connectGrob(Algae, Leopto, "vertical")


boxGrob(">100", x = 0.8, y = 0.77)

       
lg <- linesGrob(x = unit(c(.8, 0.9), "npc"),
                y = unit(c(.7, .7), "npc"),
                gp = gpar(lwd = 2))
grid.draw(lg)
