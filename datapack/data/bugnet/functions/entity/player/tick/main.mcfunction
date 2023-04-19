####################
# Runs every tick for all players
####################

## Non-Spectator
execute if entity @s[gamemode=!spectator] run function bugnet:entity/player/tick/non_spectators
