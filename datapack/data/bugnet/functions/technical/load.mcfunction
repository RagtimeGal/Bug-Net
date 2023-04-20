####################
# Runs when loaded
####################

## Create Scoreboards
scoreboard objectives add bugnet.dummy dummy
scoreboard objectives add bugnet.fungusstick minecraft.used:minecraft.warped_fungus_on_a_stick

## Run on Load
tellraw @a[predicate=bugnet:entity/debug_player] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.bugnet.reload.success","color":"white","bold":false}]
execute unless score #server_version bugnet.dummy matches 100 run function bugnet:technical/initiate
