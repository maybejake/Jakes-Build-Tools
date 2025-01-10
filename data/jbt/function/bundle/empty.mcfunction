execute in minecraft:overworld run function jbt:bundle/save with storage jbt:bundle

#delete the item
function jbt:bundle/sound
$item modify entity @s $(slot) {"function":"minecraft:set_components","components":{"minecraft:bundle_contents":[]}}