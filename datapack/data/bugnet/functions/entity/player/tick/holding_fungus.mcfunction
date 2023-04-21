####################
# Runs when player is holding warped fungus on a stick
####################

# Bug Net
execute if entity @s[predicate=bugnet:entity/holding/bug_net,scores={bugnet.fungusstick=1..}] run function bugnet:item/bug_net/main

# Reset Score
scoreboard players reset @s bugnet.fungusstick