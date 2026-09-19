data modify entity @s Item set from storage jbt:temp flask.item
data modify entity @s Owner set from storage jbt:temp flask.uuid

summon minecraft:marker ~ ~ ~ {Tags:["jbt.marker","jbt.flask_marker","jbt.flask_marker_new","smithed.entity","smithed.strict"]}
ride @n[type=minecraft:marker,tag=jbt.flask_marker_new] mount @s
execute as @n[type=minecraft:marker,tag=jbt.flask_marker_new] run function jbt.experience_flask:potion/marker/setup

execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon minecraft:area_effect_cloud run function jbt.main:get_pos
data modify entity @s Motion set from storage jbt:temp pos

tag @s add jbt.flask_fix
schedule function jbt.experience_flask:potion/fix 2t replace