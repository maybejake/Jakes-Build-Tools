execute if entity @s[predicate=jbt:chisel/diamond] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:diamond_chisel"}}
execute if entity @s[predicate=jbt:chisel/diamond] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:diamond_chisel","fallback":"Diamond Chisel"}}}
execute if entity @s[predicate=jbt:chisel/diamond] run return run tellraw @s [{"translate":"jbt:diamond_chisel","fallback":"Diamond Chisel"}," updated!"]

execute if entity @s[predicate=jbt:chisel/iron] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:iron_chisel"}}
execute if entity @s[predicate=jbt:chisel/iron] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:iron_chisel","fallback":"Iron Chisel"}}}
execute if entity @s[predicate=jbt:chisel/iron] run return run tellraw @s [{"translate":"jbt:iron_chisel","fallback":"Iron Chisel"}," updated!"]