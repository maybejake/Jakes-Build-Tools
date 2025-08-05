scoreboard players set @s jbt.raycast_distance 0

execute store result score @s jbt.reach_tool run attribute @s minecraft:block_interaction_range get 20

function jbt.rope_ladder:ray/ray