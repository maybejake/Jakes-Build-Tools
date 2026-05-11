tag @s add jbt.has_magnet
execute as @e[type=minecraft:item,distance=..7] at @s run function jbt.item_magnet:attract
tag @s remove jbt.has_magnet