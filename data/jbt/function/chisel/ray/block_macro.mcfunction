#ban shulkers
$execute if items entity @s hotbar.$(chosen_slot) minecraft:shulker_box run return fail

$setblock -20000000 -64 98 $(chosen_block)
setblock -20000000 -64 98 bedrock
scoreboard players set @s jbt_chisel_slot_check 1