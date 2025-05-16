execute if entity @s[predicate=jbt:trowel/mainhand/diamond] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:diamond_trowel"}}
execute if entity @s[predicate=jbt:trowel/mainhand/diamond] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:diamond_Trowel","fallback":"Diamond Trowel"}}}
execute if entity @s[predicate=jbt:trowel/mainhand/diamond] run return run tellraw @s [{"translate":"jbt:diamond_trowel","fallback":"Diamond Trowel"}," updated!"]

execute if entity @s[predicate=jbt:trowel/mainhand/iron] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:iron_trowel"}}
execute if entity @s[predicate=jbt:trowel/mainhand/iron] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:iron_trowel","fallback":"Iron Trowel"}}}
execute if entity @s[predicate=jbt:trowel/mainhand/iron] run return run tellraw @s [{"translate":"jbt:iron_trowel","fallback":"Iron Trowel"}," updated!"]