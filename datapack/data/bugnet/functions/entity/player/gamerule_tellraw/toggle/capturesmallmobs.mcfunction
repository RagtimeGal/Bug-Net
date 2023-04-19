############################################################
# Toggles the capturesmallmobs gamerule
############################################################

execute store result score @s bugnet.dummy run data get storage bugnet:storage root.gamerules.capturesmallmobs
execute if entity @s[scores={bugnet.dummy=..0}] run data modify storage bugnet:storage root.gamerules.capturesmallmobs set value 1b
execute if entity @s[scores={bugnet.dummy=1..}] run data modify storage bugnet:storage root.gamerules.capturesmallmobs set value 0b
function bugnet:entity/player/gamerule_tellraw/menu
