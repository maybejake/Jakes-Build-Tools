playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 0.6 1
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.5 1.1

$summon minecraft:item ~ ~ ~ {Item:$(item),Tags:["jbt.bundle_item"],PickupDelay:30}
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.4 summon minecraft:area_effect_cloud run function jbt.main:get_pos
data modify entity @n[type=minecraft:item,tag=jbt.bundle_item,distance=..0.1] Motion set from storage jbt:temp pos
tag @n[type=minecraft:item,tag=jbt.bundle_item,distance=..0.1] remove jbt.bundle_item