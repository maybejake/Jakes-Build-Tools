execute if entity @s[tag=jbt_tape_mainhand] store result score $id jbt.dummy run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_tape_id
execute if entity @s[tag=jbt_tape_offhand] store result score $id jbt.dummy run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_tape_id
execute if score $tape_selection_toggle jbt.dummy matches 1 run function jbt.tape_measure:selection/summon with storage jbt:temp tape

execute if entity @s[tag=jbt_tape_mainhand] run return run function jbt.tape_measure:action/measure/mainhand with storage jbt:temp tape
execute if entity @s[tag=jbt_tape_offhand] run function jbt.tape_measure:action/measure/offhand with storage jbt:temp tape