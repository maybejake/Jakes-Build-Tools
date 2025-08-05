#check for sophisticated backpacks
$execute if data storage jbt:temp trowel.inventory[{Slot:$(slot)b}].components.sophisticatedcore:storage_uuid run return fail

#ban containers
$execute if items entity @s hotbar.$(slot) *[minecraft:container,!minecraft:container=[]] run return fail

$setblock -20000000 -64 98 $(id)

setblock -20000000 -64 98 bedrock
$data modify storage jbt:temp trowel.blocks append value "$(id)"
$data modify storage jbt:temp trowel.slots append value "$(slot)"