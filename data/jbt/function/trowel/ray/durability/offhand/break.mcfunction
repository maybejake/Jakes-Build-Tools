#check for advancement
execute if entity @s[predicate=jbt:trowel/offhand/diamond] if entity @s[predicate=jbt:unbreaking/offhand/3] run advancement grant @s only jbt:visible/break_trowel

execute if entity @s[predicate=jbt:trowel/offhand/iron] at @s anchored eyes run particle minecraft:item{item:"minecraft:stone_sword"} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force
execute if entity @s[predicate=jbt:trowel/offhand/diamond] at @s anchored eyes run particle minecraft:item{item:"minecraft:diamond_sword"} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force
item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1