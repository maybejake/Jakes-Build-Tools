data modify entity @s NoAI set value 0b
data modify entity @s Invulnerable set value 0b
tag @s remove jbt_bag_contained
scoreboard players reset @s jbt_id
execute at @e[type=minecraft:armor_stand,tag=jbt_bag_stand,limit=1] run tp @s ~ ~0.2 ~