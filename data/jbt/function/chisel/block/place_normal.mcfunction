$setblock ~ ~ ~ $(chosen_block) destroy
execute if block ~ ~ ~ #minecraft:leaves run function jbt:chisel/block/place_leaves with storage jbt:chisel
scoreboard players set @s jbt_place_check 1

execute if block ~ ~ ~ #minecraft:saplings unless block ~ ~-1 ~ #minecraft:dirt run setblock ~ ~ ~ air destroy