execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!jbt_bag_ray,tag=!smithed.strict,dx=0,sort=nearest] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[type=!#jbt.main:hostile,type=!#jbt.main:raybanned,dx=0] positioned ~0.95 ~0.95 ~0.95 run return run function jbt.mob_bag:remove_ray/hit_entity
execute unless block ~ ~ ~ #jbt.main:blocks run return fail
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach positioned ^ ^ ^0.2 run function jbt.mob_bag:remove_ray/ray