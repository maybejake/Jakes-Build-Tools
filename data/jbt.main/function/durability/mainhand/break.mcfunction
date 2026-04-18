data modify storage jbt:temp durability.break set from entity @s SelectedItem
function jbt.main:durability/break_particle/main

item replace entity @s weapon.mainhand with minecraft:air
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1