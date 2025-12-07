#check for sophisticated backpacks
execute if data storage jbt:temp chisel.item.components.sophisticatedcore:storage_uuid run return fail

data modify storage jbt:temp chisel.block set from storage jbt:temp chisel.item.id

return run function jbt.chisel:check/block_macro with storage jbt:temp chisel