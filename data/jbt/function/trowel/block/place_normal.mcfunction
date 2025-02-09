$setblock ~ ~ ~ $(chosen_block) replace
scoreboard players set @s jbt_place_check 1

execute if block ~ ~ ~ #minecraft:saplings unless block ~ ~-1 ~ #minecraft:dirt run setblock ~ ~ ~ air destroy