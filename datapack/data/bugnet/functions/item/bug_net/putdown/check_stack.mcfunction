####################
# Detects if the stack is too high
####################

execute if entity @s[predicate=bugnet:entity/has_vehicle] run scoreboard players add #stack bugnet.dummy 1
execute on vehicle run function bugnet:item/bug_net/putdown/check_stack