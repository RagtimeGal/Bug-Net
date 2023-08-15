####################
# Runs when holding bug net
####################

tag @s add bugnet.raycaster
data modify storage bugnet:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt={SelectedItem:{tag:{bugnet:{full:1}}}}] anchored eyes run function bugnet:item/bug_net/putdown/raycast
execute if entity @s[nbt={SelectedItem:{tag:{bugnet:{full:0}}}}] anchored eyes run function bugnet:item/bug_net/pickup/raycast
tag @s remove bugnet.raycaster
tag @s remove bugnet.tag
advancement revoke @s only bugnet:technical/entity/interact_with_capturable
