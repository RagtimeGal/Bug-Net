####################
# Runs as the entity right-clicked
####################

tag @p[tag=bugnet.raycaster] add bugnet.tag
# Recursively check is they have a vehicle
scoreboard players set #stack bugnet.dummy 1
function bugnet:item/bug_net/putdown/check_stack
# Compare recieved number of vehicles with gamerule and if fine summon entity
execute store result score #temp_0 bugnet.dummy run data get storage bugnet:storage root.gamerules.stacksize
execute if score #stack bugnet.dummy <= #temp_0 bugnet.dummy run function bugnet:item/bug_net/putdown/stack_successful with storage bugnet:storage root.temp.item.tag.bugnet
execute if score #temp_0 bugnet.dummy matches -1 run function bugnet:item/bug_net/putdown/stack_successful with storage bugnet:storage root.temp.item.tag.bugnet
execute if score #stack bugnet.dummy > #temp_0 bugnet.dummy unless score #temp_0 bugnet.dummy matches -1 run title @p[tag=bugnet.tag] actionbar {"translate":"actionbar.bug_net.stacksize"}