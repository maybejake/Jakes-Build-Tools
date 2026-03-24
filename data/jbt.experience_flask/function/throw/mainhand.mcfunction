data remove storage jbt:temp flask

execute store result storage jbt:temp flask.points int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".jbt.points
execute store result storage jbt:temp flask.levels int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".jbt.levels
item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
function jbt.experience_flask:potion/summon