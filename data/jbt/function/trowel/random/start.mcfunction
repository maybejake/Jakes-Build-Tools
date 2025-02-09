#clear storage
data remove storage jbt:trowel slots
data remove storage jbt:trowel blocks
data remove storage jbt:trowel length
data remove storage jbt:trowel temp_id
data remove storage jbt:trowel temp_slot
data remove storage jbt:trowel chosen_block
data remove storage jbt:trowel chosen_slot
data remove storage jbt:trowel damage
data remove storage jbt:trowel components

#clear scores
scoreboard players reset @s jbt_chosen_block_check
scoreboard players reset @s jbt_trowel_block_length
scoreboard players reset @s jbt_side
scoreboard players reset @s jbt_half
scoreboard players reset @s jbt_trowel_damage
scoreboard players reset @s jbt_trowel_max_damage
scoreboard players set @s jbt_place_check 0

#store inventory
data modify storage jbt:trowel inventory set from entity @s Inventory

#store valid blocks
function jbt:trowel/random/check_hotbar with storage jbt:trowel

#get length
execute store result score @s jbt_trowel_block_length run data get storage jbt:trowel blocks
scoreboard players remove @s jbt_trowel_block_length 1

#if negative then stop processing
execute if score @s jbt_trowel_block_length matches ..-1 run return fail

execute store result storage jbt:trowel length int 1 run scoreboard players get @s jbt_trowel_block_length

#pick index
execute store result storage jbt:trowel chosen_index int 1 run function jbt:trowel/random/pick_index with storage jbt:trowel

#convert to block
function jbt:trowel/random/get_block with storage jbt:trowel