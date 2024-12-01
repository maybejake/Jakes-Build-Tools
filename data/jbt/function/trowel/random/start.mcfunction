#clear storage
data remove storage jbt:trowel inventory
data remove storage jbt:trowel blocks
data remove storage jbt:trowel length
data remove storage jbt:trowel chosen_index
data remove storage jbt:trowel chosen_slot
data remove storage jbt:trowel chosen_block
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

#store valid blocks
execute if items entity @s hotbar.0 #jbt:block_items run data modify storage jbt:trowel blocks append value 0
execute if items entity @s hotbar.1 #jbt:block_items run data modify storage jbt:trowel blocks append value 1
execute if items entity @s hotbar.2 #jbt:block_items run data modify storage jbt:trowel blocks append value 2
execute if items entity @s hotbar.3 #jbt:block_items run data modify storage jbt:trowel blocks append value 3
execute if items entity @s hotbar.4 #jbt:block_items run data modify storage jbt:trowel blocks append value 4
execute if items entity @s hotbar.5 #jbt:block_items run data modify storage jbt:trowel blocks append value 5
execute if items entity @s hotbar.6 #jbt:block_items run data modify storage jbt:trowel blocks append value 6
execute if items entity @s hotbar.7 #jbt:block_items run data modify storage jbt:trowel blocks append value 7
execute if items entity @s hotbar.8 #jbt:block_items run data modify storage jbt:trowel blocks append value 8

#get length
execute store result score @s jbt_trowel_block_length run data get storage jbt:trowel blocks
scoreboard players remove @s jbt_trowel_block_length 1

#if negative then stop processing
execute if score @s jbt_trowel_block_length matches ..-1 run return fail

execute store result storage jbt:trowel length int 1 run scoreboard players get @s jbt_trowel_block_length

#pick index
execute store result storage jbt:trowel chosen_index int 1 run function jbt:trowel/random/pick_index with storage jbt:trowel

#convert to slot
execute store result storage jbt:trowel chosen_slot int 1 run function jbt:trowel/random/get_slot with storage jbt:trowel

#convert to block
function jbt:trowel/random/get_block with storage jbt:trowel