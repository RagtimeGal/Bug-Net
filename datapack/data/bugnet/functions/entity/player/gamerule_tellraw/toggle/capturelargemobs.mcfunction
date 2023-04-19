############################################################
# Toggles the capturelargemobs gamerule
############################################################

execute store result score @s bugnet.dummy run data get storage bugnet:storage root.gamerules.capturelargemobs
execute if entity @s[scores={bugnet.dummy=..0}] run data modify storage bugnet:storage root.gamerules.capturelargemobs set value 1b
execute if entity @s[scores={bugnet.dummy=1..}] run data modify storage bugnet:storage root.gamerules.capturelargemobs set value 0b
function bugnet:entity/player/gamerule_tellraw/menu
