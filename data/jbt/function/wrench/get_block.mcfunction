scoreboard players set jbt jbt_block_found_check 0
loot spawn -20000000 -64 97 mine ~ ~ ~ minecraft:shears[minecraft:enchantments={"minecraft:silk_touch":1}]
execute positioned -20000000 -64 97 if entity @n[type=minecraft:item,distance=..0.5] run scoreboard players set jbt jbt_block_found_check 1
execute if score jbt jbt_block_found_check matches 0 run loot spawn -20000000 -64 97 mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
execute positioned -20000000 -64 97 run data modify storage jbt:wrench block set from entity @n[type=minecraft:item,distance=..0.5] Item.id
execute positioned -20000000 -64 97 run kill @n[type=minecraft:item,distance=..0.5]