tag @s remove jbt_bag_target
tag @s add jbt_bag_contained
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
scoreboard players operation @s jbt_id = jbt score_storage

execute in minecraft:overworld run return run tp @s -20000000 10000 98