scoreboard players reset @s jbt_wrench_unbreaking_check
execute if entity @s[predicate=jbt:unbreaking/offhand/all] run function jbt:wrench/ray/durability/offhand/unbreaking
execute if score @s jbt_wrench_unbreaking_check matches 1 run return fail

#handle damage
data modify storage jbt:wrench components set from entity @s Inventory[{Slot:-106b}].components
execute store result score @s jbt_wrench_damage run data get storage jbt:wrench components."minecraft:damage"
execute store result score @s jbt_wrench_max_damage run data get storage jbt:wrench components."minecraft:max_damage"
scoreboard players add @s jbt_wrench_damage 1
execute store result storage jbt:wrench damage int 1 run scoreboard players get @s jbt_wrench_damage

function jbt:wrench/ray/durability/offhand/apply with storage jbt:wrench
execute if score @s jbt_wrench_damage >= @s jbt_wrench_max_damage run function jbt:wrench/ray/durability/offhand/break