tellraw @s [{"translate":"jbt:wrench","fallback":"Block Wrench"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:wrench","fallback":"Block Wrench"},"minecraft:item_model":"jbt:wrench","minecraft:repairable":{"items":"minecraft:iron_ingot"}}}