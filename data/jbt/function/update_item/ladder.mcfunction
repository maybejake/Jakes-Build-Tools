tellraw @s [{"translate":"jbt:ladder","fallback":"Rope Ladder"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:ladder","fallback":"Rope Ladder"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:rope_ladder"}}