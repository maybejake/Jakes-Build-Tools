tellraw @a ["",{"text":"Jake\'s Build Tools","color":"gold","bold":true}," uninstalled!"]

#click check
scoreboard objectives remove jbt_click_check

#bag
scoreboard objectives remove jbt_bag_raycast_hit
scoreboard objectives remove jbt_bag_raycast_distance

#grass starter
scoreboard objectives remove jbt_grass_raycast_hit
scoreboard objectives remove jbt_grass_raycast_distance
scoreboard objectives remove jbt_grass_damage
scoreboard objectives remove jbt_grass_max_damage

#void bucket
scoreboard objectives remove jbt_bucket_raycast_hit
scoreboard objectives remove jbt_bucket_raycast_distance

#trowel
scoreboard objectives remove jbt_trowel_block_length
scoreboard objectives remove jbt_chosen_block_check
scoreboard objectives remove jbt_trowel_raycast_hit
scoreboard objectives remove jbt_trowel_raycast_distance
scoreboard objectives remove jbt_trowel_unbreaking_check
scoreboard objectives remove jbt_trowel_unbreaking_chance
scoreboard objectives remove jbt_trowel_damage
scoreboard objectives remove jbt_trowel_max_damage

#chisel
scoreboard objectives remove jbt_chisel_raycast_hit
scoreboard objectives remove jbt_chisel_raycast_distance
scoreboard objectives remove jbt_chisel_slot
scoreboard objectives remove jbt_chisel_slot_check
scoreboard objectives remove jbt_chisel_same_check
scoreboard objectives remove jbt_chisel_unbreaking_check
scoreboard objectives remove jbt_chisel_unbreaking_chance
scoreboard objectives remove jbt_chisel_damage
scoreboard objectives remove jbt_chisel_max_damage

#hammer
scoreboard objectives remove jbt_hammer_check
scoreboard objectives remove jbt_hammer_raycast_hit
scoreboard objectives remove jbt_hammer_raycast_distance

#flask
scoreboard objectives remove jbt_flask_player_levels
scoreboard objectives remove jbt_flask_marker_levels
scoreboard objectives remove jbt_flask_marker_points
scoreboard objectives remove jbt_flask_marker_value
scoreboard objectives remove jbt_flask_marker_repeat
scoreboard objectives remove jbt_flask_orb_x
scoreboard objectives remove jbt_flask_orb_y
scoreboard objectives remove jbt_flask_orb_z

#rope ladder
scoreboard objectives remove jbt_ladder_raycast_hit
scoreboard objectives remove jbt_ladder_raycast_distance
scoreboard objectives remove jbt_ladder_max
scoreboard objectives remove jbt_ladder_place_timer
scoreboard objectives remove jbt_ladder_break_timer
scoreboard objectives remove jbt_ladder_placed

#measuring tape
scoreboard objectives remove jbt_tape_raycast_hit
scoreboard objectives remove jbt_tape_raycast_distance
scoreboard objectives remove jbt_tape_selection_toggle

#unique id
scoreboard objectives remove global_id
scoreboard objectives remove jbt_id
scoreboard objectives remove score_storage

#place check
scoreboard objectives remove jbt_place_check

#place side
scoreboard objectives remove jbt_side

#place half
scoreboard objectives remove jbt_half

#reach
scoreboard objectives remove jbt_reach
scoreboard objectives remove jbt_reach_tools

#clear storage
data remove storage jbt:trowel inventory
data remove storage jbt:trowel blocks
data remove storage jbt:trowel length
data remove storage jbt:trowel chosen_index
data remove storage jbt:trowel chosen_slot
data remove storage jbt:trowel chosen_block
data remove storage jbt:trowel damage
data remove storage jbt:trowel components
data remove storage jbt:grass damage
data remove storage jbt:grass components
data remove storage jbt:chisel chosen_block
data remove storage jbt:chisel chosen_slot
data remove storage jbt:chisel damage
data remove storage jbt:chisel components
data remove storage jbt:flask flask_points
data remove storage jbt:flask player_points
data remove storage jbt:flask player_levels
data remove storage jbt:flask value
data remove storage jbt:flask orbx
data remove storage jbt:flask orby
data remove storage jbt:flask orbz
data remove storage jbt:flask flaks_levels
data remove storage jbt:tape x
data remove storage jbt:tape y
data remove storage jbt:tape z
data remove storage jbt:tape id
data remove storage jbt:tape dimensions

#remove selection entities
function jbt:clear_tape_selections

#load chunk
execute in minecraft:overworld run forceload remove -20000000 100 -20000000 100