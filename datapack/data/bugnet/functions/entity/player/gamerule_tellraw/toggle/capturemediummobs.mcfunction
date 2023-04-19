############################################################
# Toggles the capturemediummobs gamerule
############################################################

execute store result score @s bugnet.dummy run data get storage bugnet:storage root.gamerules.capturemediummobs
execute if entity @s[scores={bugnet.dummy=..0}] run data modify storage bugnet:storage root.gamerules.capturemediummobs set value 1b
execute if entity @s[scores={bugnet.dummy=1..}] run data modify storage bugnet:storage root.gamerules.capturemediummobs set value 0b
function bugnet:entity/player/gamerule_tellraw/menu
