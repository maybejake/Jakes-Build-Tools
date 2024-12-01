execute if score @s jbt_bag_raycast_hit matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!jbt_bag_ray,dx=0,sort=nearest] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[type=!minecraft:player,type=!#jbt:hostile,type=!#jbt:raybanned,tag=!jbt_boss_slimes,tag=!jbt_boss_graviturgist,tag=!jbt_boss_titan,tag=!jbt_boss_captain,tag=!jbt_boss_dreadbreaker,tag=!jbt_boss_emperor,tag=!jbt_boss_bee,dx=0] run tag @s add jbt_bag_target
execute if score @s jbt_bag_raycast_hit matches 0 positioned ~ ~ ~ if entity @e[tag=jbt_bag_target,sort=nearest,distance=..5,limit=1] run function jbt:bag/remove_ray/hit_entity
execute unless block ~ ~ ~ #jbt:blocks run function jbt:bag/remove_ray/hit_block
scoreboard players add @s jbt_bag_raycast_distance 1

execute if score @s jbt_bag_raycast_hit matches 0 if score @s jbt_bag_raycast_distance < @s jbt_reach positioned ^ ^ ^0.2 run function jbt:bag/remove_ray/ray
execute if score @s jbt_bag_raycast_hit matches 0 if score @s jbt_bag_raycast_distance <= @s jbt_reach run tag @s remove jbt_bag_ray