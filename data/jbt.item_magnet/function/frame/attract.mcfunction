particle minecraft:dust{color:[0.8, 0.0, 0.0], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force
particle minecraft:dust{color:[0.0, 0.0, 0.8], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force

tag @s add jbt_magnet_moving
execute facing entity @e[type=item_frame,tag=jbt_has_magnet,sort=nearest,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.3 summon minecraft:area_effect_cloud run data modify entity @e[type=minecraft:item,tag=jbt_magnet_moving,limit=1] Motion set from entity @s Pos
execute positioned 0.0 0.0 0.0 run kill @n[type=minecraft:area_effect_cloud,distance=..1]
tag @s remove jbt_magnet_moving