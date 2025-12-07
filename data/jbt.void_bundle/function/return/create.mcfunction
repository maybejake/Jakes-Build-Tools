playsound minecraft:entity.puffer_fish.blow_out neutral @a ~ ~ ~ 0.6 1
playsound minecraft:entity.illusioner.mirror_move neutral @a ~ ~ ~ 0.5 1.1

$execute anchored eyes run summon minecraft:item ^ ^-0.3 ^ {Item:$(item),Tags:["jbt_bundle_item"],PickupDelay:30}
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.4 summon minecraft:area_effect_cloud run data modify entity @n[tag=jbt_bundle_item] Motion set from entity @s Pos
execute positioned 0.0 0.0 0.0 run kill @n[type=minecraft:area_effect_cloud,distance=..1]
tag @n[tag=jbt_bundle_item,distance=..2] remove jbt_bundle_item