scoreboard players add @s jbt.timer 1
execute if score @s jbt.timer matches 1 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 1
execute if score @s jbt.timer matches 2 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.6
execute if score @s jbt.timer matches 3 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.8
execute if score @s jbt.timer matches 4 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.4
execute if score @s jbt.timer matches 5 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.6
execute if score @s jbt.timer matches 6 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.2
execute if score @s jbt.timer matches 7 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0.4
execute if score @s jbt.timer matches 8 run playsound minecraft:block.bamboo.break neutral @a ~ ~ ~ 1 0
execute if score @s jbt.timer matches 8.. run tag @s remove jbt_ladder_stand_new
execute if score @s jbt.timer matches 8.. run scoreboard players reset @s jbt.timer