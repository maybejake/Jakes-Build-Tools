execute store result storage jbt:flask flask_points int 1 run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_points
execute store result storage jbt:flask flask_levels int 1 run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_levels
item replace entity @s weapon.offhand with minecraft:air
function jbt:flask/potion/summon