####################
# Function ran to stack entities ontop of each other
####################

data modify storage bugnet:storage root.temp.item.tag.bugnet.entity.Tags append value "bugnet.temp"
$execute positioned ~ ~0.1 ~ summon $(entity_id) run data modify entity @s {} merge from storage bugnet:storage root.temp.item.tag.bugnet.entity
ride @e[limit=1,sort=nearest,tag=bugnet.temp] mount @s
tag @e[tag=bugnet.temp] remove bugnet.temp
## Modify player held item
loot replace entity @p[tag=bugnet.tag,nbt={SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.mainhand loot bugnet:items/bug_net
loot replace entity @p[tag=bugnet.tag,nbt=!{SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.offhand loot bugnet:items/bug_net