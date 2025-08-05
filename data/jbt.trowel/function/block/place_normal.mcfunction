$setblock ~ ~ ~ $(chosen_block) replace
execute if block ~ ~ ~ #minecraft:leaves run function jbt.trowel:block/place_leaves with storage jbt:trowel
scoreboard players set $place_check jbt.dummy 1

execute if block ~ ~ ~ #minecraft:saplings unless block ~ ~-1 ~ #minecraft:dirt run setblock ~ ~ ~ air destroy

execute if block ~ ~ ~ #minecraft:crops unless block ~ ~-1 ~ minecraft:farmland run setblock ~ ~ ~ air destroy