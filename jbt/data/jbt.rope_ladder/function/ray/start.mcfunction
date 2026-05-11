scoreboard players set $raycast_distance jbt.dummy 0
execute store result score $reach_tool jbt.dummy run attribute @s minecraft:block_interaction_range get 20

function jbt.rope_ladder:ray/ray