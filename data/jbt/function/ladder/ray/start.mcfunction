scoreboard players set @s jbt_ladder_raycast_hit 0
scoreboard players set @s jbt_ladder_raycast_distance 0

#store reach
execute store result score @s jbt_reach run attribute @s minecraft:block_interaction_range get 5
execute store result score @s jbt_reach_tools run attribute @s minecraft:block_interaction_range get 20

function jbt:ladder/ray/ray