data modify storage jbt:temp durability.break set from entity @s equipment.offhand
function jbt.main:durability/break_particle/main

item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:entity.item.break neutral @a ~ ~ ~ 1 1