data modify storage jbt:bundle temp_item set from entity @s SelectedItem.components.minecraft:custom_data.last_voided

execute unless function jbt:bundle/return/get_item run return fail

execute run function jbt:bundle/return/create with storage jbt:bundle
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":"{jbt_bundle:1b,smithed:{ignore:{functionality:1b,crafting:1b}}}"}}