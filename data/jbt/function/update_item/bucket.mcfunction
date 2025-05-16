tellraw @s [{"translate":"jbt:bucket","fallback":"Void Bucket"}," updated!"]

item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_name":{"translate":"jbt:bucket","fallback":"Void Bucket"}}}
item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:void_bucket"}}