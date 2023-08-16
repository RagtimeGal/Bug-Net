####################
# Runs as marker when trying to find entity
####################

data modify storage bugnet:storage root.temp.item.tag.bugnet.entity_id set from entity @s Passengers[0].id
kill @s
