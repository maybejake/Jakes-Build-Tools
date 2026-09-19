execute unless predicate jbt.main:tiers/diamond/either if block ~ ~ ~ #minecraft:needs_diamond_tool run return fail
execute if block ~ ~ ~ #jbt.main:unbreakable run return fail

#clear storage
data remove storage jbt:temp chisel

#check if offhand empty
execute unless items entity @s weapon.offhand * run return fail

#check if offhand chisel
execute if predicate jbt.chisel:offhand run return fail

#get item
function jbt.main:loot_table/to_data {loot_table:"jbt.main:technical/get_slot/offhand"}
data modify storage jbt:temp chisel.item set from storage jbt:temp loot_table.output

#check if block is valid
execute unless function jbt.chisel:check/check_block run return fail

#check if block is the same
execute unless function jbt.chisel:check/check_same run return fail

playsound minecraft:block.nether_bricks.place player @a ~ ~ ~ 0.8 1.5
playsound minecraft:block.stone.place player @a ~ ~ ~ 1 0.8
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.32 2

function jbt.chisel:block/place

swing @s mainhand

#durability
execute if entity @s[gamemode=creative] run return fail
function jbt.main:durability/mainhand/handle