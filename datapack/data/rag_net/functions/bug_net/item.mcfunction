####################
# Primary Bug Net function
####################

# Release Mob if Full
execute if data storage rag_net:storage root.temp.item.tag{rag_net:{full:1b}} anchored eyes run function rag_net:bug_net/release_mob/raycast
# Replace Item
loot replace entity @s[scores={rag_net.temp=1}] weapon.mainhand loot rag_net:items/bug_net
scoreboard players reset @s rag_net.temp
