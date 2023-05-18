

grid.newpage()


Lepto <- boxGrob("Leptophlebiidae",
                  x = .5, y = 0.9,
                  bjust = "bottom")
Leaf <- boxGrob("Leaf litter",
                x = .1, y = 0.1,
                bjust = "bottom")
Biofilm <- boxGrob("Biofilm",
                x = .5, y = 0.1,
                bjust = "bottom")
algae <- boxGrob("Algae",
                x = .85, y = 0.1,
                bjust = "bottom")
Lepto
Leaf
Biofilm
algae

boxGrob(expression(paste(g, m^-2, mo^-1)),
        x = .7, y = 0.8)

# Connect the boxes and print/plot them
connectGrob(Leaf, Lepto, "vertical",
            lty_gp = gpar(lwd = 6, col = "black", fill = "black"))
connectGrob(Biofilm, Lepto, "vertical")
connectGrob(algae, Lepto, "vertical")


# Lines
a <- linesGrob(x = unit(c(.8, .9), "npc"),
                y = unit(c(.75, .75), "npc"),
                gp = gpar(lwd = 6))

b <- linesGrob(x = unit(c(.8, .9), "npc"),
                y = unit(c(.7, .7), "npc"),
                gp = gpar(lwd = 4))

c <- linesGrob(x = unit(c(.8, .9), "npc"),
               y = unit(c(.65, .65), "npc"),
               gp = gpar(lwd = 2))

grid.draw(a)
grid.draw(b)
grid.draw(c)


grid.text('>100',
  x = unit(0.75, "npc"),
  y = unit(.76, "npc"))

grid.text('10-50',
          x = unit(0.75, "npc"),
          y = unit(.71, "npc"))

grid.text('<10',
          x = unit(0.75, "npc"),
          y = unit(.66, "npc"))
