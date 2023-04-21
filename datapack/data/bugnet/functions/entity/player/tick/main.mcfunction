####################
# Runs every tick for all players
####################

## Non-Spectator
execute if entity @s[gamemode=!spectator,predicate=bugnet:entity/holding/warped_fungus_on_a_stick] run function bugnet:entity/player/tick/holding_fungus
