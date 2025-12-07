data modify storage jbt:temp bundle.item set from entity @s SelectedItem.components.minecraft:custom_data.last_voided

execute unless data storage jbt:temp bundle.item run return fail

execute run function jbt.void_bundle:return/create with storage jbt:temp bundle
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":"{jbt_bundle:1b,smithed:{ignore:{functionality:1b,crafting:1b}}}"}}