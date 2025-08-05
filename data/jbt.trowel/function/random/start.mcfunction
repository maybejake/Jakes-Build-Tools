#store inventory
data modify storage jbt:temp trowel.inventory set from entity @s Inventory

#store valid blocks
function jbt.trowel:random/check_hotbar

#get length
scoreboard players reset $block_count jbt.dummy
execute store result score $block_count jbt.dummy run data get storage jbt:temp trowel.blocks
scoreboard players remove $block_count jbt.dummy 1

#if negative then stop processing
execute if score $block_count jbt.dummy matches ..-1 run return fail

execute store result storage jbt:temp trowel.block_count int 1 run scoreboard players get $block_count jbt.dummy

#pick index
execute store result storage jbt:temp trowel.index int 1 run function jbt.trowel:random/pick_index with storage jbt:temp trowel

#convert to block
function jbt.trowel:random/get_block with storage jbt:temp trowel