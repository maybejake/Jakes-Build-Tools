#ban shulkers
$execute if items entity @s hotbar.$(temp_slot) minecraft:shulker_box run return fail

$setblock -20000000 -64 98 $(temp_id)
setblock -20000000 -64 98 bedrock
$data modify storage jbt:trowel blocks append value "$(temp_id)"
$data modify storage jbt:trowel slots append value "$(temp_slot)"