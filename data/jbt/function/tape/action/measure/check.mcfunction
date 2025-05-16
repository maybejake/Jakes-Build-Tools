execute if entity @s[tag=jbt_tape_mainhand] store result score jbt score_storage run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_tape_id
execute if entity @s[tag=jbt_tape_offhand] store result score jbt score_storage run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_tape_id
execute if score jbt jbt_tape_selection_toggle matches 1 run function jbt:tape/selection/summon with storage jbt:tape

execute if entity @s[tag=jbt_tape_mainhand] run return run function jbt:tape/action/measure/mainhand with storage jbt:tape
execute if entity @s[tag=jbt_tape_offhand] run function jbt:tape/action/measure/offhand with storage jbt:tape