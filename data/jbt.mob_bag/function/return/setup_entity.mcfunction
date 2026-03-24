data modify entity @s NoAI set value 0b
data modify entity @s Invulnerable set value 0b
tag @s remove jbt.bag_contained
execute if entity @s[tag=jbt.bag_no_name] run function jbt.mob_bag:return/no_name
scoreboard players reset @s jbt.id
tp @s ~ ~ ~