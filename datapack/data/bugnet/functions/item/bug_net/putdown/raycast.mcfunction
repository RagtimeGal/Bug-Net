####################
# Raycast when bugnet is used and full
####################

execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,tag=!smithed.entity,type=#bugnet:catchable,limit=1,predicate=!bugnet:entity/has_passenger] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function bugnet:item/bug_net/putdown/stack
execute positioned ~-0.01 ~-0.99 ~-0.01 as @e[dx=0,tag=smithed.entity,tag=!smithed.strict,tag=bugnet.catchable,type=#bugnet:catchable,limit=1,predicate=!bugnet:entity/has_passenger] positioned ~-0.99 ~0.99 ~-0.99 if entity @s[dx=0] run function bugnet:item/bug_net/putdown/stack

execute if entity @s[tag=!bugnet.tag] unless block ^ ^ ^0.01 #bugnet:raycast_ignore positioned ^ ^ ^0.01 run function bugnet:item/bug_net/putdown/summon_entity

execute if entity @s[distance=..5,tag=!bugnet.tag] if block ^ ^ ^0.01 #bugnet:raycast_ignore positioned ^ ^ ^0.01 run function bugnet:item/bug_net/putdown/raycast
