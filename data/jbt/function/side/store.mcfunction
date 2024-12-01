execute store result score $pos0 temp run data get entity @s Pos[0] 50
execute store result score $pos1 temp run data get entity @s Pos[1] 50
execute store result score $pos2 temp run data get entity @s Pos[2] 50

execute store result score $posfloor0 temp run data get entity @s Pos[0]
execute store result score $posfloor1 temp run data get entity @s Pos[1]
execute store result score $posfloor2 temp run data get entity @s Pos[2]

scoreboard players set #constant50 temp 50
scoreboard players operation $posfloor0 temp *= #constant50 temp
scoreboard players operation $posfloor1 temp *= #constant50 temp
scoreboard players operation $posfloor2 temp *= #constant50 temp

scoreboard players operation $pos0 temp -= $posfloor0 temp
scoreboard players operation $pos1 temp -= $posfloor1 temp
scoreboard players operation $pos2 temp -= $posfloor2 temp

kill @s