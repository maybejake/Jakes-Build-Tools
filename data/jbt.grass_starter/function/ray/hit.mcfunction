#fail if block is not right block
execute unless block ~ ~ ~ #jbt.main:grass/both run return fail

#clear storage
data remove storage jbt:temp grass.damage
data remove storage jbt:temp grass.components

#store damage
execute if entity @s[tag=jbt_grass_mainhand] run data modify storage jbt:temp grass.components set from entity @s SelectedItem.components
execute if entity @s[tag=jbt_grass_offhand] run data modify storage jbt:temp grass.components set from entity @s equipment.offhand.components

scoreboard players set $damage jbt.dummy 0
execute store result score $damage jbt.dummy run data get storage jbt:temp grass.components."minecraft:damage"

scoreboard players set $max_damage jbt.dummy 0
execute store result score $max_damage jbt.dummy run data get storage jbt:temp grass.components."minecraft:max_damage"

execute if block ~ ~ ~ #jbt.main:grass/convert unless score $damage jbt.dummy = $max_damage jbt.dummy run return run function jbt.grass_starter:ray/convert/handle
execute if block ~ ~ ~ #jbt.main:grass/replenish unless score $damage jbt.dummy matches 0 run function jbt.grass_starter:ray/replenish/handle