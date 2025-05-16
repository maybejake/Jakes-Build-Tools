scoreboard objectives add jbt_temp dummy

execute store result score $pos jbt_temp run data get entity @s Pos[1] 100
execute store result score $posfloor jbt_temp run data get entity @s Pos[1]
kill @s

scoreboard players set #const100 jbt_temp 100
scoreboard players operation $posfloor jbt_temp *= #const100 jbt_temp

scoreboard players operation $pos jbt_temp -= $posfloor jbt_temp

execute if score $pos jbt_temp matches 50.. run return 2
execute if score $pos jbt_temp matches ..50 run return 1

scoreboard objectives remove jbt_temp