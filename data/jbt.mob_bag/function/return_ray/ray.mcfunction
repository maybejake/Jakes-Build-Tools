execute unless block ~ ~ ~ #jbt.main:blocks run return run function jbt.mob_bag:return_ray/hit_block
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach positioned ^ ^ ^0.2 run function jbt.mob_bag:return_ray/ray