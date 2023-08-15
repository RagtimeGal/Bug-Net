####################
# Summons the entity at proper location
####################

tag @p[tag=bugnet.raycaster] add bugnet.tag
## Summon Entity
function bugnet:item/bug_net/putdown/figure_entity
## Modify player held item
loot replace entity @p[tag=bugnet.tag,nbt={SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.mainhand loot bugnet:items/bug_net
loot replace entity @p[tag=bugnet.tag,nbt=!{SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.offhand loot bugnet:items/bug_net
