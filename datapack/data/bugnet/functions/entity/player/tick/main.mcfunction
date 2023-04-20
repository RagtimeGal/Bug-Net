####################
# Runs every tick for all players
####################

## Non-Spectator
execute if entity @s[gamemode=!spectator,predicate=bugnet:entity/holding/bug_net] run function bugnet:item/bug_net/holding
