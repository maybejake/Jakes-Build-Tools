execute store result score $levels jbt.dummy run data get storage jbt:temp flask.levels
execute if score $levels jbt.dummy matches ..16 run data modify entity @s Item set value {count:1,id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"jbt:experience_flask_1","enchantment_glint_override":true}}
execute if score $levels jbt.dummy matches 17..31 run data modify entity @s Item set value {count:1,id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"jbt:experience_flask_2","enchantment_glint_override":true}}
execute if score $levels jbt.dummy matches 32.. run data modify entity @s Item set value {count:1,id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"jbt:experience_flask_3","enchantment_glint_override":true}}

summon minecraft:marker ~ ~ ~ {Tags:["jbt.marker","jbt.flask_marker","jbt.flask_marker_new","smithed.entity","smithed.strict"]}
ride @n[type=minecraft:marker,tag=jbt.flask_marker_new] mount @s
execute as @n[type=minecraft:marker,tag=jbt.flask_marker_new] run function jbt.experience_flask:potion/marker/setup

tag @s add jbt.flask_projectile
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon minecraft:area_effect_cloud run data modify entity @e[tag=jbt.flask_projectile,limit=1] Motion set from entity @s Pos
execute positioned 0.0 0.0 0.0 run kill @n[type=minecraft:area_effect_cloud,distance=..1]
tag @s remove jbt.flask_projectile

tag @s add jbt.flask_fix
schedule function jbt.experience_flask:potion/fix 2t replace