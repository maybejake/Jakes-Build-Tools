execute store result score $x2 temp run data get storage jbt:tape x
execute store result score $y2 temp run data get storage jbt:tape y
execute store result score $z2 temp run data get storage jbt:tape z

scoreboard players operation $x1 temp -= $x2 temp
scoreboard players operation $y1 temp -= $y2 temp 
scoreboard players operation $z1 temp -= $z2 temp

scoreboard players set $zero temp 0
scoreboard players set $negativeone temp -1

execute if score $x1 temp < $zero temp run scoreboard players operation $x1 temp *= $negativeone temp
execute if score $y1 temp < $zero temp run scoreboard players operation $y1 temp *= $negativeone temp
execute if score $z1 temp < $zero temp run scoreboard players operation $z1 temp *= $negativeone temp

scoreboard players set $one temp 1
scoreboard players operation $x1 temp += $one temp
scoreboard players operation $y1 temp += $one temp
scoreboard players operation $z1 temp += $one temp

execute store result storage jbt:tape x int 1 run scoreboard players get $x1 temp
execute store result storage jbt:tape y int 1 run scoreboard players get $y1 temp
execute store result storage jbt:tape z int 1 run scoreboard players get $z1 temp