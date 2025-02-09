scoreboard players set #ray jbt_bag_raycast_hit 1

execute on passengers unless entity @s[type=!#jbt:hostile,type=!#jbt:raybanned,tag=!jbt_boss_titan,tag=!jbt_boss_bee] run return fail

#generate id
function jbt:bag/generate_id

tag @s add jbt_bag_contained
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
scoreboard players operation @s jbt_id = jbt score_storage

execute in minecraft:overworld run tp @s -20000000 10000 98

playsound minecraft:item.bundle.insert master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.1 20 force

execute as @p[tag=jbt_bag_ray] run function jbt:bag/remove_ray/modify with storage jbt:bag