####################
# Runs when the player uses a COAS
####################

# Bug Net
execute if predicate rag_net:holding_net run function rag_net:bug_net/item

# Reset Score
scoreboard players reset @s rag_net.coas
