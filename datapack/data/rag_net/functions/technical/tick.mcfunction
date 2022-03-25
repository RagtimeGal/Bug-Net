####################
# Tick
####################

## Player Tick
execute as @a[scores={rag_net.coas=1..},predicate=rag_net:holding_carrot_on_a_stick] at @s run function rag_net:player/used_coas
