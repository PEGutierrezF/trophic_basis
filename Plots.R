


library(DiagrammeR)
library(gridExtra)

# Define the first plot
feb17_Lel <- grViz("
  digraph {
    graph[layout = dot, rankdir = BT]
    node[shape = rectangle, style = filled, fillcolor = 'lightblue']

    Leaf_litter
    Biofilm
    Algae
    Leptophlebiidae

    Leaf_litter -> Leptophlebiidae [penwidth = 5, label = '186']
    Biofilm -> Leptophlebiidae [penwidth = 0.5, label = '9.45']
    Algae -> Leptophlebiidae [penwidth = 0.5, label = '9.68']
  }
")
feb17_Lel
# Define the second plot
nov17_Lel <- grViz("
  digraph {
    graph[layout = dot, rankdir = BT]
    node[shape = rectangle, style = filled, fillcolor = 'lightblue']

    Leaf_litter
    Biofilm
    Algae
    Leptophlebiidae

    Leaf_litter -> Leptophlebiidae [penwidth = 5, label = '135']
    Biofilm -> Leptophlebiidae [penwidth = 0.5, label = '5.54']
    Algae -> Leptophlebiidae [penwidth = 0.5, label = '5.06 ']
  }
")
nov17_Lel


