execute if block ~ ~ ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:dirt replace
execute if block ~ ~ ~ minecraft:podzol run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if block ~ ~ ~ minecraft:mycelium run setblock ~ ~ ~ minecraft:rooted_dirt replace
execute if block ~ ~ ~ minecraft:crimson_nylium run setblock ~ ~ ~ minecraft:netherrack replace
execute if block ~ ~ ~ minecraft:warped_nylium run setblock ~ ~ ~ minecraft:netherrack replace
particle minecraft:smoke ~ ~ ~ 0.37 0.40 0.37 0 30 force
playsound minecraft:block.grass.hit neutral @a ~ ~ ~ 1 0.9

#handle durability
execute if entity @s[gamemode=!creative] run function jbt.grass_starter:ray/replenish/durability/handle