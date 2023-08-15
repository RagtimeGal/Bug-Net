####################
# Adds one to the stacksize gamerule
####################

execute store result score @s bugnet.dummy run data get storage bugnet:storage root.gamerules.stacksize
scoreboard players add @s bugnet.dummy 1
execute if score @s bugnet.dummy matches ..-1 run scoreboard players set @s bugnet.dummy 0
execute store result storage bugnet:storage root.gamerules.stacksize int 1 run scoreboard players get @s bugnet.dummy
function bugnet:entity/player/gamerule_tellraw/menu