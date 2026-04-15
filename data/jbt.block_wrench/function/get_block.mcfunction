scoreboard players set $block_check jbt.dummy 0

# Try shears
loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:shears[minecraft:enchantments={"minecraft:silk_touch":1}]
execute if entity @e[type=minecraft:item,dx=0,limit=1] run scoreboard players set $block_check jbt.dummy 1

# Try pickaxe
execute if score $block_check jbt.dummy matches 0 run loot spawn -20000000 -64 97 mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]

data modify storage jbt:temp wrench.block set from entity @e[type=minecraft:item,dx=0,limit=1] Item.id
kill @e[type=minecraft:item,dx=0,limit=1]
setblock ~ ~ ~ minecraft:bedrock