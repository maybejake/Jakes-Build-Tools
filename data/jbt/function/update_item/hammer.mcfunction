tellraw @s [{"translate":"jbt:hammer","fallback":"Hammer"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:hammer","fallback":"Hammer"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:hammer"}}