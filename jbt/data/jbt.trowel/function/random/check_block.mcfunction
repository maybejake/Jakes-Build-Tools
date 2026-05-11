$data modify storage jbt:temp trowel.id set from storage jbt:temp trowel.inventory[{Slot:$(slot)b}].id
$data modify storage jbt:temp trowel.slot set from storage jbt:temp trowel.inventory[{Slot:$(slot)b}].Slot
function jbt.trowel:random/block_macro with storage jbt:temp trowel