data modify storage jbt:temp bundle.item set from entity @s equipment.offhand.components.minecraft:custom_data.kbt.voided

execute unless data storage jbt:temp bundle.item run return fail

execute run function jbt.void_bundle:return/create with storage jbt:temp bundle
item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":{jbt:{id:"void_bundle"},smithed:{ignore:{functionality:1b,crafting:1b}}}}}