function jbt.tape_measure:selection/clean

function jbt.tape_measure:generate_id
execute if score $tape_selection_toggle jbt.dummy matches 1 run function jbt.tape_measure:selection/summon with storage jbt:temp tape

execute if entity @s[tag=jbt_tape_mainhand] run return run function jbt.tape_measure:action/store/mainhand with storage jbt:temp tape
execute if entity @s[tag=jbt_tape_offhand] run function jbt.tape_measure:action/store/offhand with storage jbt:temp tape