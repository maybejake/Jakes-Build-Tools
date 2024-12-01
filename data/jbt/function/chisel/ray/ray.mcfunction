execute unless block ~ ~ ~ #jbt:blocks run function jbt:chisel/ray/hit
scoreboard players add @s jbt_chisel_raycast_distance 1

execute if score @s jbt_chisel_raycast_hit matches 0 if score @s jbt_chisel_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:chisel/ray/ray