data remove storage jbt:temp flask

execute store result storage jbt:temp flask.points int 1 run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt.points
execute store result storage jbt:temp flask.levels int 1 run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt.levels
item replace entity @s[gamemode=!creative] weapon.offhand with minecraft:air
function jbt.experience_flask:potion/summon