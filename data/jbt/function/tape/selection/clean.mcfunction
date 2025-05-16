execute if entity @s[tag=jbt_tape_mainhand] store result score jbt score_storage run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_tape_id
execute if entity @s[tag=jbt_tape_offhand] store result score jbt score_storage run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_tape_id

kill @e[type=minecraft:item_display,tag=jbt_tape_selection,predicate=jbt:idmatch]