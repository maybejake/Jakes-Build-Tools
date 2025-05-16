scoreboard objectives add jbt_temp dummy

execute store result score $x1 jbt_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_x
execute store result score $y1 jbt_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_y
execute store result score $z1 jbt_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_z

function jbt:tape/action/measure/calculate
function jbt:tape/action/record/format with storage jbt:tape
function jbt:tape/action/record/offhand with storage jbt:tape

scoreboard objectives remove jbt_temp

function jbt:tape/sounds/in