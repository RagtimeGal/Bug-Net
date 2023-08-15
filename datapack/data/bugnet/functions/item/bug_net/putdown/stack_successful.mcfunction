####################
# Function ran to stack entities ontop of each other
####################

data modify storage bugnet:storage root.temp.item.tag.bugnet.entity.Tags append value "bugnet.temp"
execute at @s as @s run function bugnet:item/bug_net/putdown/summon_entity
ride @e[limit=1,sort=nearest,tag=bugnet.temp] mount @s
tag @e[tag=bugnet.temp] remove bugnet.temp
