execute if block ~ ~ ~ minecraft:ladder run function jbt:ladder/ray/hit
scoreboard players add @s jbt_ladder_raycast_distance 1

execute if score @s jbt_ladder_raycast_hit matches 0 if score @s jbt_ladder_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:ladder/ray/ray