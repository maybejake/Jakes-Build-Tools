execute unless block ~ ~ ~ #jbt:blocks run function jbt:bag/return_ray/hit_block
scoreboard players add @s jbt_bag_raycast_distance 1

execute if score @s jbt_bag_raycast_hit matches 0 if score @s jbt_bag_raycast_distance < @s jbt_reach positioned ^ ^ ^0.2 run function jbt:bag/return_ray/ray
execute if score @s jbt_bag_raycast_hit matches 0 if score @s jbt_bag_raycast_distance <= @s jbt_reach run tag @s remove jbt_bag_ray