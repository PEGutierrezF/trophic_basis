



# ---------------------------------------------
# Plots
# 18 May 2023
# Pablo E. Gutiérrez-Fonseca
# pabloe.gutierrezfonseca@gmail.com
# ---------------------------------------------
#  



grid.newpage()

{
Lepto <- boxGrob("Leptophlebiidae",
                  x = .5, y = 0.9,
                  bjust = "bottom",
                 txt_gp = gpar(fontsize = 20),
                 box_gp = gpar(fill = "lightblue"))
Leaf <- boxGrob("Leaf litter",
                x = .1, y = 0.1,
                bjust = "bottom",
                txt_gp = gpar(fontsize = 20),
                box_gp = gpar(fill = "lightblue"))
Biofilm <- boxGrob("Biofilm",
                x = .5, y = 0.1,
                bjust = "bottom",
                txt_gp = gpar(fontsize = 20),
                box_gp = gpar(fill = "lightblue"))
algae <- boxGrob("Algae",
                x = .85, y = 0.1,
                bjust = "bottom",
                txt_gp = gpar(fontsize = 20),
                box_gp = gpar(fill = "lightblue"))
}
Lepto
Leaf
Biofilm
algae

text <- glue::glue("<span style='font-size:18pt; color:black'>
                   mg m^-2 mo^-1</span>")
grid.draw(richtext_grob(text, x = 0.9, y = 0.8, hjust = 1))


# Connect the boxes and print/plot them
connectGrob(Leaf, Lepto, "vertical",
            lty_gp = gpar(lwd = 6, col = "black", fill = "black"),
            arrow_obj = getOption("connectGrobArrow", 
                                  default = arrow(ends = "last", type = "open")))
connectGrob(Biofilm, Lepto, "vertical",
            arrow_obj = getOption("connectGrobArrow", 
                                  default = arrow(ends = "last", type = "open")))
connectGrob(algae, Lepto, "vertical",
            arrow_obj = getOption("connectGrobArrow", 
                                  default = arrow(ends = "last", type = "open")))


# Define the lines
{
a <- linesGrob(x = unit(c(.8, .9), "npc"),
                y = unit(c(.75, .75), "npc"),
                gp = gpar(lwd = 6))

b <- linesGrob(x = unit(c(.8, .9), "npc"),
                y = unit(c(.7, .7), "npc"),
                gp = gpar(lwd = 4))

c <- linesGrob(x = unit(c(.8, .9), "npc"),
               y = unit(c(.65, .65), "npc"),
               gp = gpar(lwd = 2))
}
# Draw the lines
grid.draw(a)
grid.draw(b)
grid.draw(c)

{
grid.text('>100',
  x = unit(0.75, "npc"),
  y = unit(.76, "npc"), 
  gp = gpar(fontsize = 15, fontface = "plain"))

grid.text('10-50',
          x = unit(0.75, "npc"),
          y = unit(.71, "npc"), 
          gp = gpar(fontsize = 15, fontface = "plain"))

grid.text('<10',
          x = unit(0.75, "npc"),
          y = unit(.66, "npc"), 
          gp = gpar(fontsize = 15, fontface = "plain"))
}

# Save the grid as a JPEG image
# jpeg("NJ_Feb17.jpg")

