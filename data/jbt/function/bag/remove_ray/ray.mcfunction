execute if score #ray jbt_bag_raycast_hit matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!jbt_bag_ray,tag=!smithed.strict,dx=0,sort=nearest] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[type=!#jbt:hostile,type=!#jbt:raybanned,tag=!jbt_boss_titan,tag=!jbt_boss_bee,dx=0] positioned ~0.95 ~0.95 ~0.95 run function jbt:bag/remove_ray/hit_entity
execute unless block ~ ~ ~ #jbt:blocks run scoreboard players set #ray jbt_bag_raycast_hit 1
scoreboard players add @s jbt_bag_raycast_distance 1

execute if score #ray jbt_bag_raycast_hit matches 0 if score @s jbt_bag_raycast_distance < @s jbt_reach positioned ^ ^ ^0.2 run function jbt:bag/remove_ray/ray