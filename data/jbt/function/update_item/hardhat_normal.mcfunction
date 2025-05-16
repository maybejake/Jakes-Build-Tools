tellraw @s [{"translate":"jbt:hardhat","fallback":"Hardhat"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:hardhat","fallback":"Hardhat"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:hardhat"}}