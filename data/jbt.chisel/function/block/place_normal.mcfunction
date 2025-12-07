$setblock ~ ~ ~ $(chosen_block) destroy
execute if block ~ ~ ~ #minecraft:leaves run function jbt.chisel:block/place_leaves with storage jbt:temp trowel
scoreboard players set $place_check jbt.dummy 1

execute if block ~ ~ ~ #minecraft:saplings unless block ~ ~-1 ~ #minecraft:dirt run setblock ~ ~ ~ air destroy

execute if block ~ ~ ~ #minecraft:crops unless block ~ ~-1 ~ minecraft:farmland run setblock ~ ~ ~ air destroy