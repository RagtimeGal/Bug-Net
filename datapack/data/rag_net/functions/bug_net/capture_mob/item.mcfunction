####################
# Net used
####################

# Run Commands
data modify storage rag_net:storage root.temp.item set from entity @s SelectedItem
execute as @e[distance=..5,nbt={HurtTime:10s},tag=!smithed.entity] run function rag_net:bug_net/capture_mob/entity

# Revoke Advancement
advancement revoke @s only rag_net:technical/attack_capturable
