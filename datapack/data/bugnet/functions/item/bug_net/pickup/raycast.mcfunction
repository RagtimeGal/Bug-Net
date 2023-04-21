####################
# Runs when bug net is used and empty
####################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=#bugnet:catchable,tag=!smithed.entity,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function bugnet:item/bug_net/pickup/check_entity
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,type=#bugnet:catchable,tag=smithed.entity,tag=!smithed.strict,limit=1] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function bugnet:item/bug_net/pickup/smithed_entity
execute if entity @s[distance=..5.5,tag=!bugnet.tag] if block ^ ^ ^0.01 #bugnet:raycast_ignore positioned ^ ^ ^0.01 run function bugnet:item/bug_net/pickup/raycast