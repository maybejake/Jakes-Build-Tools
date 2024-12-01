scoreboard objectives add temp dummy

execute store result score $x1 temp run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_x
execute store result score $y1 temp run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_y
execute store result score $z1 temp run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_z

function jbt:tape/action/measure/calculate
function jbt:tape/action/record/format with storage jbt:tape
function jbt:tape/action/record/mainhand with storage jbt:tape

scoreboard objectives remove temp

function jbt:tape/sounds/in