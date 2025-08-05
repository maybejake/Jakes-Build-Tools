execute store result score $x2 jbt.dummy run data get storage jbt:temp tape.x
execute store result score $y2 jbt.dummy run data get storage jbt:temp tape.y
execute store result score $z2 jbt.dummy run data get storage jbt:temp tape.z

scoreboard players operation $x1 jbt.dummy -= $x2 jbt.dummy
scoreboard players operation $y1 jbt.dummy -= $y2 jbt.dummy 
scoreboard players operation $z1 jbt.dummy -= $z2 jbt.dummy

scoreboard players set $zero jbt.dummy 0
scoreboard players set $negativeone jbt.dummy -1

execute if score $x1 jbt.dummy < $zero jbt.dummy run scoreboard players operation $x1 jbt.dummy *= $negativeone jbt.dummy
execute if score $y1 jbt.dummy < $zero jbt.dummy run scoreboard players operation $y1 jbt.dummy *= $negativeone jbt.dummy
execute if score $z1 jbt.dummy < $zero jbt.dummy run scoreboard players operation $z1 jbt.dummy *= $negativeone jbt.dummy

scoreboard players set $one jbt.dummy 1
scoreboard players operation $x1 jbt.dummy += $one jbt.dummy
scoreboard players operation $y1 jbt.dummy += $one jbt.dummy
scoreboard players operation $z1 jbt.dummy += $one jbt.dummy

execute store result storage jbt:temp tape.x int 1 run scoreboard players get $x1 jbt.dummy
execute store result storage jbt:temp tape.y int 1 run scoreboard players get $y1 jbt.dummy
execute store result storage jbt:temp tape.z int 1 run scoreboard players get $z1 jbt.dummy