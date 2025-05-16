tellraw @s [{"translate":"jbt:magnet","fallback":"Item Magnet"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:magnet","fallback":"Item Magnet"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:item_magnet"}}