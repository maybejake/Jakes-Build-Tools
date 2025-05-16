scoreboard players set @s jbt_grass_raycast_hit 1

#fail if block is not right block
execute unless block ~ ~ ~ #jbt:grass/both run return fail

#clear storage
data remove storage jbt:grass damage
data remove storage jbt:grass components

#clear scores
scoreboard players reset @s jbt_grass_damage
scoreboard players reset @s jbt_grass_max_damage

#store damage
execute if entity @s[tag=jbt_grass_mainhand] run data modify storage jbt:grass components set from entity @s SelectedItem.components
execute if entity @s[tag=jbt_grass_offhand] run data modify storage jbt:grass components set from entity @s equipment.offhand.components
execute store result score @s jbt_grass_damage run data get storage jbt:grass components."minecraft:damage"
execute store result score @s jbt_grass_max_damage run data get storage jbt:grass components."minecraft:max_damage"

execute if block ~ ~ ~ #jbt:grass/convert unless score @s jbt_grass_damage = @s jbt_grass_max_damage run return run function jbt:grass/ray/convert/handle
execute if block ~ ~ ~ #jbt:grass/replenish unless score @s jbt_grass_damage matches 0 run function jbt:grass/ray/replenish/handle