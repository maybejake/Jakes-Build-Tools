tellraw @a ["",{"text":"Jake's Build Tools ","color":"gold","bold":true},{"translate":"jbt:loaded","fallback":"loaded!","color":"white","bold":false}]

#click check
scoreboard objectives add jbt_click_check minecraft.used:minecraft.warped_fungus_on_a_stick

#bag
scoreboard objectives add jbt_bag_raycast_hit dummy
scoreboard objectives add jbt_bag_raycast_distance dummy
scoreboard objectives add jbt_bag_cooldown dummy

#grass starter
scoreboard objectives add jbt_grass_raycast_hit dummy
scoreboard objectives add jbt_grass_raycast_distance dummy
scoreboard objectives add jbt_grass_damage dummy
scoreboard objectives add jbt_grass_max_damage dummy

#void bucket
scoreboard objectives add jbt_bucket_raycast_hit dummy
scoreboard objectives add jbt_bucket_raycast_distance dummy

#trowel
scoreboard objectives add jbt_trowel_block_length dummy
scoreboard objectives add jbt_chosen_block_check dummy
scoreboard objectives add jbt_trowel_raycast_hit dummy
scoreboard objectives add jbt_trowel_raycast_distance dummy
scoreboard objectives add jbt_trowel_unbreaking_check dummy
scoreboard objectives add jbt_trowel_unbreaking_chance dummy
scoreboard objectives add jbt_trowel_damage dummy
scoreboard objectives add jbt_trowel_max_damage dummy

#chisel
scoreboard objectives add jbt_chisel_raycast_hit dummy
scoreboard objectives add jbt_chisel_raycast_distance dummy
scoreboard objectives add jbt_chisel_slot dummy
scoreboard objectives add jbt_chisel_slot_check dummy
scoreboard objectives add jbt_chisel_same_check dummy
scoreboard objectives add jbt_chisel_unbreaking_check dummy
scoreboard objectives add jbt_chisel_unbreaking_chance dummy
scoreboard objectives add jbt_chisel_damage dummy
scoreboard objectives add jbt_chisel_max_damage dummy

#hammer
scoreboard objectives add jbt_hammer_check minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add jbt_hammer_raycast_hit dummy
scoreboard objectives add jbt_hammer_raycast_distance dummy

#flask
scoreboard objectives add jbt_flask_player_levels dummy
scoreboard objectives add jbt_flask_marker_levels dummy
scoreboard objectives add jbt_flask_marker_points dummy
scoreboard objectives add jbt_flask_marker_value dummy
scoreboard objectives add jbt_flask_marker_repeat dummy
scoreboard objectives add jbt_flask_orb_x dummy
scoreboard objectives add jbt_flask_orb_y dummy
scoreboard objectives add jbt_flask_orb_z dummy
scoreboard objectives add jbt_flask_level_check dummy
scoreboard objectives add jbt_flask_point_check dummy

#rope ladder
scoreboard objectives add jbt_ladder_raycast_hit dummy
scoreboard objectives add jbt_ladder_raycast_distance dummy
scoreboard objectives add jbt_ladder_max dummy
scoreboard objectives add jbt_ladder_number dummy
scoreboard objectives add jbt_ladder_place_timer dummy
scoreboard objectives add jbt_ladder_break_timer dummy
scoreboard objectives add jbt_ladder_placed minecraft.used:minecraft.ladder

#measuring tape
scoreboard objectives add jbt_tape_raycast_hit dummy
scoreboard objectives add jbt_tape_raycast_distance dummy
scoreboard objectives add jbt_tape_selection_toggle dummy

#void bundle
scoreboard objectives add jbt_void_bundle_cooldown dummy

#wrench
scoreboard objectives add jbt_wrench_raycast_hit dummy
scoreboard objectives add jbt_wrench_raycast_distance dummy
scoreboard objectives add jbt_wrench_unbreaking_check dummy
scoreboard objectives add jbt_wrench_unbreaking_chance dummy
scoreboard objectives add jbt_wrench_damage dummy
scoreboard objectives add jbt_wrench_max_damage dummy

#enable selections
execute unless score jbt jbt_tape_selection_toggle matches 0..1 run scoreboard players set jbt jbt_tape_selection_toggle 1

#unique id
scoreboard objectives add jbt_id dummy
scoreboard objectives add score_storage dummy

#place check
scoreboard objectives add jbt_place_check dummy

#place side
scoreboard objectives add jbt_side dummy

#place half
scoreboard objectives add jbt_half dummy

#reach
scoreboard objectives add jbt_reach dummy
scoreboard objectives add jbt_reach_tools dummy
scoreboard objectives add jbt_reach_hammer dummy

#tile drops
scoreboard objectives add jbt_tile_drops dummy

#block check
scoreboard objectives add jbt_block_found_check dummy

#rotation
scoreboard objectives add jbt_rotation dummy

#update trigger
scoreboard objectives add jbt_update_item trigger

#load chunk
execute in minecraft:overworld run forceload add -20000000 100 -20000000 100

#create chest
execute in minecraft:overworld unless block -20000000 -64 99 minecraft:chest run setblock -20000000 -64 99 minecraft:chest

#start tick
schedule clear jbt:tick_20
function jbt:tick_20