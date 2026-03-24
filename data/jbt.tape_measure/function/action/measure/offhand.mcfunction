data modify storage jbt:temp tape.data set from entity @s equipment.offhand.components."minecraft:custom_data".jbt

execute store result score $id jbt.dummy run data get storage jbt:temp tape.data.uid
execute unless score $tape_selection_toggle jbt.dummy matches 0 run function jbt.tape_measure:selection/summon with storage jbt:temp tape

execute store result score $x1 jbt.dummy run data get storage jbt:temp tape.data.x
execute store result score $y1 jbt.dummy run data get storage jbt:temp tape.data.y
execute store result score $z1 jbt.dummy run data get storage jbt:temp tape.data.z

function jbt.tape_measure:action/measure/calculate
function jbt.tape_measure:action/record/format with storage jbt:temp tape
function jbt.tape_measure:action/record/offhand with storage jbt:temp tape