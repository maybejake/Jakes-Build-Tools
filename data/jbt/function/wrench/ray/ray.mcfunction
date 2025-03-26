execute unless block ~ ~ ~ #jbt:blocks run function jbt:wrench/ray/hit
scoreboard players add @s jbt_wrench_raycast_distance 1

execute if score @s jbt_wrench_raycast_hit matches 0 if score @s jbt_wrench_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:wrench/ray/ray
execute if score @s jbt_wrench_raycast_hit matches 1 run function jbt:wrench/ray/reset_hand_tag