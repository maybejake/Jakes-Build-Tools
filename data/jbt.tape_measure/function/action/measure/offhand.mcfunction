execute store result score $x1 jbt.dummy run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_x
execute store result score $y1 jbt.dummy run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_y
execute store result score $z1 jbt.dummy run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt_z

function jbt.tape_measure:action/measure/calculate
function jbt.tape_measure:action/record/format with storage jbt:temp tape
function jbt.tape_measure:action/record/offhand with storage jbt:temp tape

function jbt.tape_measure:sounds/in