tellraw @s [{"translate":"jbt:bag","fallback":"Mob Bag"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:bag","fallback":"Mob Bag"}}}
execute if entity @s[predicate=jbt:bag/filled] run return run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_full"}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_empty"}}