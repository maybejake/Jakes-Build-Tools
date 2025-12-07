data remove storage jbt:temp flask

execute store result storage jbt:temp flask.points int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_points
execute store result storage jbt:temp flask.levels int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_levels
item replace entity @s weapon.mainhand with minecraft:air
function jbt.experience_flask:potion/summon