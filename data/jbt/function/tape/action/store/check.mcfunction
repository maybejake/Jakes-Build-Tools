function jbt:tape/selection/clean

function jbt:tape/generate_id
execute if score jbt jbt_tape_selection_toggle matches 1 run function jbt:tape/selection/summon with storage jbt:tape

execute if entity @s[tag=jbt_tape_mainhand] run return run function jbt:tape/action/store/mainhand with storage jbt:tape
execute if entity @s[tag=jbt_tape_offhand] run function jbt:tape/action/store/offhand with storage jbt:tape