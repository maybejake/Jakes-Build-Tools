scoreboard players set @s jbt_click_check 0

#block if adventure mode
execute if entity @s[gamemode=adventure] run return fail

#store reach
execute store result score @s jbt_reach run attribute @s minecraft:block_interaction_range get 5
execute store result score @s jbt_reach_tools run attribute @s minecraft:block_interaction_range get 20

execute if predicate jbt:bag/bag run return run function jbt:bag/effect
execute if predicate jbt:trowel/any run return run function jbt:trowel/check
execute if predicate jbt:chisel/either run return run function jbt:chisel/effect
execute if predicate jbt:grass/any run return run function jbt:grass/check
execute if predicate jbt:bucket run return run function jbt:bucket/effect
execute if predicate jbt:flask/flask run return run function jbt:flask/check
execute if predicate jbt:tape/any run return run function jbt:tape/check
execute if predicate jbt:wrench/any run return run function jbt:wrench/check