execute store result score $pos jbt.dummy run data get entity @s Pos[1] 100
execute store result score $posfloor jbt.dummy run data get entity @s Pos[1]
kill @s

scoreboard players set #const100 jbt.dummy 100
scoreboard players operation $posfloor jbt.dummy *= #const100 jbt.dummy

scoreboard players operation $pos jbt.dummy -= $posfloor jbt.dummy

execute if score $pos jbt.dummy matches 50.. run return 2
execute if score $pos jbt.dummy matches ..50 run return 1