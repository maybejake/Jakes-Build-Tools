execute if entity @s[predicate=jbt.main:unbreaking/mainhand/all] if function jbt.chisel:durability/unbreaking run return run function jbt.chisel:durability/modify

#handle damage
data modify storage jbt:temp chisel.components set from entity @s SelectedItem.components

scoreboard players set $damage jbt.dummy 0
execute store result score $damage jbt.dummy run data get storage jbt:temp chisel.components."minecraft:damage"
scoreboard players add $damage jbt.dummy 1

scoreboard players set $max_damage jbt.dummy 0
execute store result score $max_damage jbt.dummy run data get storage jbt:temp chisel.components."minecraft:max_damage"

execute store result storage jbt:temp chisel.damage int 1 run scoreboard players get $damage jbt.dummy

function jbt.chisel:durability/apply with storage jbt:temp chisel
execute if score $damage jbt.dummy >= $max_damage jbt.dummy run function jbt.chisel:durability/break