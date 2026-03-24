scoreboard players add @s jbt.timer 1
execute unless score @s jbt.timer matches 3.. run return fail

execute if entity @s[tag=jbt.air] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=jbt.cave_air] run setblock ~ ~ ~ minecraft:cave_air replace
execute if entity @s[tag=jbt.void_air] run setblock ~ ~ ~ minecraft:void_air replace
execute if entity @s[tag=jbt.water] run setblock ~ ~ ~ minecraft:water[level=0] replace

tp @s ~ ~-1000 ~
kill @s