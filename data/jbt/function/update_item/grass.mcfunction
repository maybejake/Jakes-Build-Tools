tellraw @s [{"translate":"jbt:grass","fallback":"Grass Starter"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:grass","fallback":"Grass Starter"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:grass_starter"}}