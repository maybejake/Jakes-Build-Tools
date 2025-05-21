$data modify storage jbt:chisel chosen_item set from entity @s Inventory[{Slot:$(chosen_slot)b}]

#check for sophisticated backpacks
execute if data storage jbt:chisel chosen_item.components.sophisticatedcore:storage_uuid run return fail

data modify storage jbt:chisel chosen_block set from storage jbt:chisel chosen_item.id

function jbt:chisel/ray/block_macro with storage jbt:chisel