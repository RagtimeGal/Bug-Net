####################
# Runs as the entity the player is picking up
####################

## Do Stuff
execute on passengers run ride @s dismount
ride @s dismount
## Modify Storage
data modify storage bugnet:storage root.temp.item.tag.bugnet.entity set from entity @s
data remove storage bugnet:storage root.temp.item.tag.bugnet.entity.Pos
data remove storage bugnet:storage root.temp.item.tag.bugnet.entity.Motion
data modify storage bugnet:storage root.temp.item.tag.bugnet.full set value 1
function bugnet:item/bug_net/pickup/figure_entity
## Kill Entity
tp @s ~ -666 ~
kill @s
## Modify player held item
item modify entity @p[tag=bugnet.tag,nbt={SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.mainhand bugnet:bug_net_full
item modify entity @p[tag=bugnet.tag,nbt=!{SelectedItem:{tag:{bugnet:{id:"bug_net"}}}}] weapon.offhand bugnet:bug_net_full