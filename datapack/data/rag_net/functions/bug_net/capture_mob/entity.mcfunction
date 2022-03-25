####################
# Executes as the entity
####################

# Stores entity data
data modify storage rag_net:storage root.temp.item.tag.rag_net.entity set from entity @s {}
data remove storage rag_net:storage root.temp.item.tag.rag_net.entity.Pos
data remove storage rag_net:storage root.temp.item.tag.rag_net.entity.Motion
data remove storage rag_net:storage root.temp.item.tag.rag_net.entity.UUID
data remove storage rag_net:storage root.temp.item.tag.rag_net.entity.Rotation
# Sets full to 1b
data modify storage rag_net:storage root.temp.item.tag.rag_net.full set value 1b
# Stores the mob
function rag_net:bug_net/capture_mob/store_mob
# Sets item
item modify entity @p[advancements={rag_net:technical/attack_capturable=true}] weapon.mainhand rag_net:bug_net
# Kills Entity
tp @s ~ ~-1000 ~
