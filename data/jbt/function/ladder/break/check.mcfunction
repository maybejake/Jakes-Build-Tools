scoreboard players add @s jbt_ladder_break_timer 1
execute if score @s jbt_ladder_break_timer matches 1 positioned ~ ~1 ~ as @e[type=minecraft:item,nbt={Item:{count:1,id:"minecraft:ladder"}},sort=nearest,distance=..1,limit=1] run kill @s
execute if score @s jbt_ladder_break_timer matches 1 run function jbt:ladder/break/spawn
execute if score @s jbt_ladder_break_timer matches 1 if block ~ ~ ~ minecraft:ladder run function jbt:ladder/break/loop

execute if score @s jbt_ladder_break_timer matches 1 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0
execute if score @s jbt_ladder_break_timer matches 2 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.4
execute if score @s jbt_ladder_break_timer matches 3 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.2
execute if score @s jbt_ladder_break_timer matches 4 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.6
execute if score @s jbt_ladder_break_timer matches 5 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.4
execute if score @s jbt_ladder_break_timer matches 6 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.8
execute if score @s jbt_ladder_break_timer matches 7 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 0.6
execute if score @s jbt_ladder_break_timer matches 8 run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 1 1
execute if score @s jbt_ladder_break_timer matches 8.. run kill @s