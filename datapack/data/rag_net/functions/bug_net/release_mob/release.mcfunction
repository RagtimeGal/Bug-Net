####################
# Spawns the mob
####################

data modify storage rag_net:storage root.temp.item set from entity @s SelectedItem
function rag_net:bug_net/release_mob/summon
execute as @e[tag=rag_net.newly_spawned] run function rag_net:bug_net/release_mob/copy_nbt
