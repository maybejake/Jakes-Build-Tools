scoreboard players reset @s jbt_trowel_unbreaking_check
execute if entity @s[predicate=jbt:unbreaking/offhand/all] run function jbt:trowel/ray/durability/offhand/unbreaking
execute if score @s jbt_trowel_unbreaking_check matches 1 run return fail

#handle damage
data modify storage jbt:trowel components set from entity @s Inventory[{Slot:-106b}].components
execute store result score @s jbt_trowel_damage run data get storage jbt:trowel components."minecraft:damage"
execute store result score @s jbt_trowel_max_damage run data get storage jbt:trowel components."minecraft:max_damage"
scoreboard players add @s jbt_trowel_damage 1
execute store result storage jbt:trowel damage int 1 run scoreboard players get @s jbt_trowel_damage

function jbt:trowel/ray/durability/offhand/apply with storage jbt:trowel
execute if score @s jbt_trowel_damage >= @s jbt_trowel_max_damage run function jbt:trowel/ray/durability/offhand/break