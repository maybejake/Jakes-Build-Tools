#check for sophisticated backpacks
execute if data storage jbt:temp chisel.item.components.sophisticatedcore:storage_uuid run return fail

#ban containers
execute if items entity @s weapon.offhand *[minecraft:container,!minecraft:container=[]] run return fail

#check blacklists
execute if items entity @s weapon.offhand #jbt.main:blacklist run return fail

#ban items with custom data
execute if items entity @s weapon.offhand *[minecraft:custom_data] run return fail

data modify storage jbt:temp chisel.block_check set from storage jbt:temp chisel.item.id

function jbt.chisel:check/block_macro with storage jbt:temp chisel

execute if data storage jbt:temp chisel.block run return 1
return fail