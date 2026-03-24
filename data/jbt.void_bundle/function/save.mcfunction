#move to chest
$item replace block -20000000 -64 99 container.0 from entity @s $(slot)

data modify block -20000000 -64 99 Items[{Slot:0b}].components.minecraft:custom_data.jbt.voided set from block -20000000 -64 99 Items[{Slot:0b}].components.minecraft:bundle_contents[0]

#move back
$item replace entity @s $(slot) from block -20000000 -64 99 container.0

