particle minecraft:dust{color:[0.8, 0.0, 0.0], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force
particle minecraft:dust{color:[0.0, 0.0, 0.8], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1 force

execute facing entity @n[type=minecraft:item_frame,tag=jbt.has_magnet] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.3 summon minecraft:area_effect_cloud run function jbt.main:get_pos
data modify entity @s Motion set from storage jbt:temp pos