tag @s add jbt_has_magnet
execute as @e[type=minecraft:item,distance=..7] at @s run function jbt:magnet/frame/attract
tag @s remove jbt_has_magnet