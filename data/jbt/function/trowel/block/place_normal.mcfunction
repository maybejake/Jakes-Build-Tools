$setblock ~ ~ ~ $(chosen_block) replace
execute if block ~ ~ ~ #minecraft:leaves run function jbt:trowel/block/place_leaves with storage jbt:trowel
scoreboard players set @s jbt_place_check 1

execute if block ~ ~ ~ #minecraft:saplings unless block ~ ~-1 ~ #minecraft:dirt run setblock ~ ~ ~ air destroy