execute store result score $x2 jbt_temp run data get storage jbt:tape x
execute store result score $y2 jbt_temp run data get storage jbt:tape y
execute store result score $z2 jbt_temp run data get storage jbt:tape z

scoreboard players operation $x1 jbt_temp -= $x2 jbt_temp
scoreboard players operation $y1 jbt_temp -= $y2 jbt_temp 
scoreboard players operation $z1 jbt_temp -= $z2 jbt_temp

scoreboard players set $zero jbt_temp 0
scoreboard players set $negativeone jbt_temp -1

execute if score $x1 jbt_temp < $zero jbt_temp run scoreboard players operation $x1 jbt_temp *= $negativeone jbt_temp
execute if score $y1 jbt_temp < $zero jbt_temp run scoreboard players operation $y1 jbt_temp *= $negativeone jbt_temp
execute if score $z1 jbt_temp < $zero jbt_temp run scoreboard players operation $z1 jbt_temp *= $negativeone jbt_temp

scoreboard players set $one jbt_temp 1
scoreboard players operation $x1 jbt_temp += $one jbt_temp
scoreboard players operation $y1 jbt_temp += $one jbt_temp
scoreboard players operation $z1 jbt_temp += $one jbt_temp

execute store result storage jbt:tape x int 1 run scoreboard players get $x1 jbt_temp
execute store result storage jbt:tape y int 1 run scoreboard players get $y1 jbt_temp
execute store result storage jbt:tape z int 1 run scoreboard players get $z1 jbt_temp