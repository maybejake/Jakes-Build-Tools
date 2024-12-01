execute unless block ~ ~ ~ #jbt:blocks run function jbt:grass/ray/hit
scoreboard players add @s jbt_grass_raycast_distance 1

execute if score @s jbt_grass_raycast_hit matches 0 if score @s jbt_grass_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:grass/ray/ray