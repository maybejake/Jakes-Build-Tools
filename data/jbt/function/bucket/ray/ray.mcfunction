execute unless block ~ ~ ~ #jbt:bucket/blocks run function jbt:bucket/ray/hit_block
scoreboard players add @s jbt_bucket_raycast_distance 1

execute if score @s jbt_bucket_raycast_hit matches 0 if score @s jbt_bucket_raycast_distance < @s jbt_reach positioned ^ ^ ^0.2 run function jbt:bucket/ray/ray
execute if score @s jbt_bucket_raycast_hit matches 0 if score @s jbt_bucket_raycast_distance <= @s jbt_reach run tag @s remove jbt_bucket_ray