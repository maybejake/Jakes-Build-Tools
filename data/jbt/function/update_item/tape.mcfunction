tellraw @s [{"translate":"jbt:tape","fallback":"Tape Measure"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:tape","fallback":"Tape Measure"}}}
execute if entity @s[predicate=jbt:tape/open/mainhand] run return run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:tape_measure_out"}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:tape_measure_in"}}