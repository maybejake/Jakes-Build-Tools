execute in minecraft:overworld run function jbt.void_bundle:save with storage jbt:temp bundle

#delete the item
$item modify entity @s $(slot) {"function":"minecraft:set_components","components":{"minecraft:bundle_contents":[]}}

playsound minecraft:entity.puffer_fish.blow_up neutral @a ~ ~ ~ 0.4 1
playsound minecraft:entity.illusioner.mirror_move neutral @a ~ ~ ~ 0.5 1.4