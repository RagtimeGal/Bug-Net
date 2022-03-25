####################
# Raycast to release mob
####################

execute unless block ^ ^ ^0.01 #rag_net:raycast_ignore positioned ^ ^ ^0.01 run function rag_net:bug_net/release_mob/release
execute if entity @s[distance=..5] if block ^ ^ ^0.01 #rag_net:raycast_ignore positioned ^ ^ ^0.01 run function rag_net:bug_net/release_mob/raycast
