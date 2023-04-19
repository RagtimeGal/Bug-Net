####################
# Removes the feedback from using commands
####################

tellraw @s[tag=!bugnet.no_space] ""
tag @s remove bugnet.no_space
execute store result score @s bugnet.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score @s bugnet.dummy matches 1.. run schedule function bugnet:entity/player/gamerule_tellraw/no_feedback_chat_message/scheduled 1t
