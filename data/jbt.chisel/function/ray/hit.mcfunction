execute if entity @s[predicate=jbt.chisel:iron] if block ~ ~ ~ minecraft:obsidian run return fail
execute if block ~ ~ ~ #jbt.main:unbreakable run return fail

#clear storage
data remove storage jbt:temp chisel

#get slot
execute store result score $chisel_slot jbt.dummy run data get entity @s SelectedItemSlot
scoreboard players add $chisel_slot jbt.dummy 1

#cant be higher than slot 8
execute if score $chisel_slot jbt.dummy matches 9.. run return fail

#how?
execute if score $chisel_slot jbt.dummy matches ..0 run return fail

#store slot
execute store result storage jbt:temp chisel.slot int 1 run scoreboard players get $chisel_slot jbt.dummy

#get item
function jbt.chisel:check/get_item with storage jbt:temp chisel

#check if empty
execute unless data storage jbt:temp chisel.item run return fail

#check if slot is valid
execute unless function jbt.chisel:check/check_block run return fail

#check if block is the same
execute unless function jbt.chisel:check/check_same run return fail

execute at @s run playsound minecraft:block.nether_bricks.place neutral @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.stone.place neutral @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 0.32 2

function jbt.chisel:block/place

#handle durability
execute if entity @s[gamemode=!creative] run function jbt.chisel:durability/handle
execute if entity @s[gamemode=creative] run function jbt.chisel:durability/modify