particle minecraft:dust{color:[0.8, 0.0, 0.0], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1
particle minecraft:dust{color:[0.0, 0.0, 0.8], scale:0.6} ~ ~0.3 ~ 0.12 0.12 0.12 0 1

execute positioned ~ ~-0.5 ~ facing entity @p[tag=jbt.has_magnet] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.3 summon minecraft:area_effect_cloud run function jbt.main:get_pos
data modify entity @s Motion set from storage jbt:temp pos