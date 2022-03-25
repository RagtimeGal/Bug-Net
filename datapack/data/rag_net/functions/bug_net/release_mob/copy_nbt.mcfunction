####################
# Copies the NBT into the mob
####################

data modify entity @s {} merge from storage rag_net:storage root.temp.item.tag.rag_net.entity
tag @s remove rag_net.newly_spawned
