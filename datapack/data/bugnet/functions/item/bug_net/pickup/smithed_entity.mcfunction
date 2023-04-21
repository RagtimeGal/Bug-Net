####################
# Runs when the captured entity is a custom one
####################

tag @p[tag=bugnet.raycaster] add bugnet.tag
scoreboard players set @s bugnet.dummy 0
execute store result score @s bugnet.dummy if entity @s[tag=bugnet.catchable]

## Run
execute if score @s bugnet.dummy matches 0 run title @p[tag=bugnet.tag] actionbar {"translate":"actionbar.bug_net.fail"}
execute if score @s bugnet.dummy matches 1 run function bugnet:item/bug_net/pickup/vanilla_entity