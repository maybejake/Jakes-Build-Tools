data modify entity @s NoAI set value 0b
data modify entity @s Invulnerable set value 0b
tag @s remove jbt_bag_contained
execute if entity @s[tag=jbt_bag_no_name] run function jbt.mob_bag:return_ray/no_name
scoreboard players reset @s jbt_id
tp @s ~ ~0.2 ~