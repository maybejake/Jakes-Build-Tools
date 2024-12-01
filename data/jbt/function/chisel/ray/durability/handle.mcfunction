scoreboard players reset @s jbt_chisel_unbreaking_check
execute if entity @s[predicate=jbt:unbreaking/mainhand/all] run function jbt:chisel/ray/durability/unbreaking
execute if score @s jbt_chisel_unbreaking_check matches 1 run return fail

#handle damage
data modify storage jbt:chisel components set from entity @s SelectedItem.components
execute store result score @s jbt_chisel_damage run data get storage jbt:chisel components."minecraft:damage"
execute store result score @s jbt_chisel_max_damage run data get storage jbt:chisel components."minecraft:max_damage"
scoreboard players add @s jbt_chisel_damage 1
execute store result storage jbt:chisel damage int 1 run scoreboard players get @s jbt_chisel_damage

function jbt:chisel/ray/durability/apply with storage jbt:chisel
execute if score @s jbt_chisel_damage >= @s jbt_chisel_max_damage run function jbt:chisel/ray/durability/break