execute unless predicate jbt.main:tiers/diamond/either if block ~ ~ ~ #minecraft:needs_diamond_tool run return fail
execute if block ~ ~ ~ #jbt.main:unbreakable run return fail

#clear storage
data remove storage jbt:temp chisel

#check if offhand empty
execute unless items entity @s weapon.offhand * run return fail

#check if offhand chisel
execute if predicate jbt.chisel:offhand run return fail

#get item
data modify storage jbt:temp chisel.item set from entity @s equipment.offhand

#check if slot is valid
execute unless function jbt.chisel:check/check_block run return fail

#check if block is the same
execute unless function jbt.chisel:check/check_same run return fail

execute at @s run playsound minecraft:block.nether_bricks.place neutral @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.stone.place neutral @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 0.32 2

function jbt.chisel:block/place

swing @s mainhand

#durability
execute if entity @s[gamemode=creative] run return fail
function jbt.main:durability/mainhand/handle