execute if block ~ ~ ~ minecraft:light run return fail
execute unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ minecraft:water[level=0] run return fail

execute if block ~ ~ ~ minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["jbt_light","jbt_air"]}
execute if block ~ ~ ~ minecraft:cave_air run summon minecraft:marker ~ ~ ~ {Tags:["jbt_light","jbt_cave_air"]}
execute if block ~ ~ ~ minecraft:void_air run summon minecraft:marker ~ ~ ~ {Tags:["jbt_light","jbt_void_air"]}
execute if block ~ ~ ~ minecraft:water run summon minecraft:marker ~ ~ ~ {Tags:["jbt_light","jbt_water"]}

execute if block ~ ~ ~ minecraft:water[level=0] run return run setblock ~ ~ ~ minecraft:light[level=15,waterlogged=true] replace
setblock ~ ~ ~ minecraft:light[level=15,waterlogged=false] replace