tellraw @s [{"translate":"jbt:bundle","fallback":"Void Bundle"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:bundle","fallback":"Void Bundle"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:void_bundle"}}