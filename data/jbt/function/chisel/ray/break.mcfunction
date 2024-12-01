item replace entity @s weapon.mainhand with minecraft:air
playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1
execute at @s anchored eyes run particle minecraft:item{item:"minecraft:stone_sword"} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force
