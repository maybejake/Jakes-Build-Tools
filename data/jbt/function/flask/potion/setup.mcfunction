execute store result score @s jbt_flask_player_levels run data get storage jbt:flask player_levels
execute if score @s jbt_flask_player_levels matches ..16 run data modify entity @s Item set value {count:1,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1022092,"enchantment_glint_override":true}}
execute if score @s jbt_flask_player_levels matches 17..31 run data modify entity @s Item set value {count:1,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1022093,"enchantment_glint_override":true}}
execute if score @s jbt_flask_player_levels matches 32.. run data modify entity @s Item set value {count:1,id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1022094,"enchantment_glint_override":true}}

summon minecraft:marker ~ ~ ~ {Tags:["jbt_flask_marker","jbt_flask_marker_new"]}
ride @e[type=minecraft:marker,tag=jbt_flask_marker_new,sort=nearest,limit=1] mount @s
execute as @e[type=minecraft:marker,tag=jbt_flask_marker_new,sort=nearest,limit=1] run function jbt:flask/potion/marker/setup

tag @s add jbt_flask_projectile
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon minecraft:area_effect_cloud run data modify entity @e[tag=jbt_flask_projectile,limit=1] Motion set from entity @s Pos
tag @s remove jbt_flask_projectile

tag @s add jbt_flask_fix
schedule function jbt:flask/potion/fix 2t replace