execute on passengers unless entity @s[type=!#jbt.main:hostile,type=!#jbt.main:raybanned,tag=!jbt_boss_titan,tag=!jbt_boss_bee] run return fail

#generate id
function jbt.mob_bag:generate_id

tag @s add jbt_bag_contained
data modify entity @s NoAI set value 1b
data modify entity @s Invulnerable set value 1b
scoreboard players operation @s jbt_id = $id jbt.dummy

playsound minecraft:item.bundle.insert neutral @a ~ ~ ~ 2 0.1
playsound minecraft:entity.illusioner.cast_spell neutral @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.1 20 force

execute as @p[tag=jbt_bag_ray] run function jbt.mob_bag:remove/modify with storage jbt:temp bag

execute unless data entity @s CustomName run function jbt.mob_bag:remove/no_name

execute in minecraft:overworld run tp @s -20000000 10000 98