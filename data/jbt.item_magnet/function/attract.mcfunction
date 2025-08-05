particle minecraft:dust{color:[0.8, 0.0, 0.0], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force
particle minecraft:dust{color:[0.0, 0.0, 0.8], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force

tag @s add jbt_magnet_moving
execute positioned ~ ~-0.5 ~ facing entity @a[tag=jbt_has_magnet,sort=nearest,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.3 summon minecraft:area_effect_cloud run function jbt.item_magnet:cloud
tag @s remove jbt_magnet_moving