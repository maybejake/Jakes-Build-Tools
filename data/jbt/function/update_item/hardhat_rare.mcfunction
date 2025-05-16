tellraw @s [{"translate":"jbt:hardhat_rare","fallback":"Foreman's Hardhat"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:hardhat_rare","fallback":"Foreman's Hardhat"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:foreman_hardhat"}}