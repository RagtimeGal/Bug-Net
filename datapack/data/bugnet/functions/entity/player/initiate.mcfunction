####################
# Initiates the player to play
####################

tellraw @s {"translate":"The Bug Net Resource Pack is not installed.","color":"red","with":[{"translate":"commands.bugnet.initiate","color":"white","with":[{"translate":"pack.bugnet","color":"#FFAA00","underlined":true,"hoverEvent":{"action":"show_text","contents":{"translate":"pack.bugnet.hover_event"}},"clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/Bug-Net/wiki"}}]}]}

scoreboard players set DataVersion bugnet.dummy 3337
execute store result score @s bugnet.dummy run data get entity @s DataVersion
scoreboard players operation @s bugnet.dummy -= DataVersion bugnet.dummy
execute unless entity @s[scores={bugnet.dummy=0}] run tellraw @s {"translate":"commands.bugnet.wrong_version: You are using Bug Net on the incorrect Minecraft version. Please check the download.","color":"red","bold":true}
execute unless entity @s[scores={bugnet.dummy=0}] run title @s title {"translate":"commands.bugnet.initiate.wrong_version.title","color":"red","bold":true}
scoreboard players reset DataVersion bugnet.dummy
