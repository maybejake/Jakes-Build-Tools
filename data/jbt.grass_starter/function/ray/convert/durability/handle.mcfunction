#handle damage
scoreboard players add $damage jbt.dummy 1
execute store result storage jbt:temp grass.damage int 1 run scoreboard players get $damage jbt.dummy

execute if entity @s[tag=jbt_grass_mainhand] run return run function jbt.grass_starter:ray/convert/durability/apply/mainhand with storage jbt:temp grass
execute if entity @s[tag=jbt_grass_offhand] run return run function jbt.grass_starter:ray/convert/durability/apply/offhand with storage jbt:temp grass