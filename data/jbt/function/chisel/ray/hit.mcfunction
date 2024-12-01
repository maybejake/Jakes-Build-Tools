scoreboard players set @s jbt_chisel_raycast_hit 1

execute if entity @s[predicate=jbt:chisel/iron] if block ~ ~ ~ minecraft:obsidian run return fail
execute if block ~ ~ ~ #jbt:unbreakable run return fail

#clear storage
data remove storage jbt:chisel chosen_block
data remove storage jbt:chisel chosen_slot
data remove storage jbt:chisel damage
data remove storage jbt:chisel components

#clear scores
scoreboard players reset @s jbt_side
scoreboard players reset @s jbt_half
scoreboard players reset @s jbt_chisel_slot
scoreboard players reset @s jbt_chisel_damage
scoreboard players reset @s jbt_chisel_max_damage
scoreboard players set @s jbt_place_check 0
scoreboard players set @s jbt_chisel_slot_check 0
scoreboard players set @s jbt_chisel_same_check 0

#get slot
execute store result score @s jbt_chisel_slot run data get entity @s SelectedItemSlot
scoreboard players add @s jbt_chisel_slot 1

#cant be higher than slot 8
execute if score @s jbt_chisel_slot matches 9.. run return fail

#how?
execute if score @s jbt_chisel_slot matches ..0 run return fail

#store slot
execute store result storage jbt:chisel chosen_slot int 1 run scoreboard players get @s jbt_chisel_slot

#check if offhand is valid
function jbt:chisel/ray/check_slot with storage jbt:chisel
execute if score @s jbt_chisel_slot_check matches 0 run return fail

#convert to block
function jbt:chisel/ray/get_block with storage jbt:chisel

#check if block is the same
function jbt:chisel/ray/check_same with storage jbt:chisel
execute if score @s jbt_chisel_same_check matches 1 run return fail

execute at @s run playsound minecraft:block.nether_bricks.place master @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.32 2

function jbt:chisel/block/place

#handle durability
execute if entity @s[gamemode=!creative] run function jbt:chisel/ray/durability/handle