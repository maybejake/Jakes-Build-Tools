#check for sophisticated backpacks
$execute if data storage jbt:trowel inventory[{Slot:$(temp_slot)b}].components.sophisticatedcore:storage_uuid run return fail

#ban containers
$execute if items entity @s hotbar.$(temp_slot) *[minecraft:container,!minecraft:container=[]] run return fail

$setblock -20000000 -64 98 $(temp_id)
setblock -20000000 -64 98 bedrock
$data modify storage jbt:trowel blocks append value "$(temp_id)"
$data modify storage jbt:trowel slots append value "$(temp_slot)"