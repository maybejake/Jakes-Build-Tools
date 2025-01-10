execute unless block ~ ~ ~ #jbt:bucket/blocks unless block ~ ~ ~ #jbt:bucket/liquids run return fail
execute unless block ~ ~ ~ #jbt:bucket/blocks if block ~ ~ ~ #jbt:bucket/liquids[level=0] run function jbt:bucket/ray/hit_block
scoreboard players add @s jbt_bucket_raycast_distance 1

execute if score @s jbt_bucket_raycast_hit matches 0 if score @s jbt_bucket_raycast_distance < @s jbt_reach positioned ^ ^ ^0.2 run function jbt:bucket/ray/shift_ray