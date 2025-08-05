execute unless block ~ ~ ~ #jbt.main:bucket/blocks unless block ~ ~ ~ #jbt.main:bucket/liquids run return fail
execute unless block ~ ~ ~ #jbt.main:bucket/blocks run return run function jbt.void_bucket:ray/hit_block
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach positioned ^ ^ ^0.2 run function jbt.void_bucket:ray/ray