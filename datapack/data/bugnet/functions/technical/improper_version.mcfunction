####################
# Yells at player for using wrong version
####################

title @a times 0 10 0
tellraw @a {"fallback": "You are using Bug Net on the incorrect Minecraft version. You should be using Minecraft 1.20.2.","translate":"commands.bugnet.wrong_version","color":"red","bold":true}
title @a title {"fallback": "WRONG VERSION","translate":"commands.bugnet.initiate.wrong_version.title","color":"red","bold":true}