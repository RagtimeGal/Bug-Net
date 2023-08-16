####################
# Checks what entity is being captured
####################

summon text_display ~ -666 ~ {Tags:["bugnet.temp"]}
ride @s mount @e[type=text_display,tag=bugnet.temp,limit=1]
execute as @e[type=text_display,tag=bugnet.temp,limit=1] run function bugnet:item/bug_net/pickup/as_display
