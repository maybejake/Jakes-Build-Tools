execute if block ~ ~ ~ minecraft:dirt run setblock ~ ~ ~ minecraft:grass_block replace
execute if block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:podzol replace
execute if block ~ ~ ~ minecraft:rooted_dirt run setblock ~ ~ ~ minecraft:mycelium replace
execute if block ~ ~ ~ minecraft:netherrack unless entity @s[predicate=jbt:issneaking] run setblock ~ ~ ~ minecraft:crimson_nylium replace
execute if block ~ ~ ~ minecraft:netherrack if entity @s[predicate=jbt:issneaking] run setblock ~ ~ ~ minecraft:warped_nylium replace
particle minecraft:happy_villager ~ ~ ~ 0.37 0.40 0.37 0 30 force
playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 1 0.9

#handle durability
execute if entity @s[gamemode=!creative] run function jbt:grass/ray/convert/durability/handle