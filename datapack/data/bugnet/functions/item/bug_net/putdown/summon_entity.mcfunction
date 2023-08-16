####################
# Summons the entity at proper location
####################

tag @p[tag=bugnet.raycaster] add bugnet.tag
## Summon Entity
$execute positioned ~ ~0.1 ~ summon $(entity_id) run data modify entity @s {} merge from storage bugnet:storage root.temp.item.tag.bugnet.entity
## Modify player held item
loot replace entity @p[tag=bugnet.tag,nbt={SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.mainhand loot bugnet:items/bug_net
loot replace entity @p[tag=bugnet.tag,nbt=!{SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.offhand loot bugnet:items/bug_net
