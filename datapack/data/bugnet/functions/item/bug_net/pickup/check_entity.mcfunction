####################
# Checks if the entity can be caught with current gamerules
####################

tag @p[tag=bugnet.raycaster] add bugnet.tag
scoreboard players set @s bugnet.dummy 0
## Small
execute store result score @s bugnet.dummy if entity @s[type=#bugnet:small_mob] if data storage bugnet:storage root.gamerules{capturesmallmobs:1b}
## Medium
execute store result score @s bugnet.dummy if entity @s[type=#bugnet:medium_mob] if data storage bugnet:storage root.gamerules{capturemediummobs:1b}
## Large
execute store result score @s bugnet.dummy if entity @s[type=#bugnet:large_mob] if data storage bugnet:storage root.gamerules{capturelargemobs:1b}
## Boss
execute store result score @s bugnet.dummy if entity @s[type=#bugnet:boss_mob] if data storage bugnet:storage root.gamerules{capturebosses:1b}

## Run
execute if score @s bugnet.dummy matches 0 run title @p[tag=bugnet.tag] actionbar {"translate":"actionbar.bug_net.fail"}
execute if score @s bugnet.dummy matches 1 run function bugnet:item/bug_net/pickup/vanilla_entity