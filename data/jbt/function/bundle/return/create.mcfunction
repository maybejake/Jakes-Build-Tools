function jbt:bundle/return/sound

$execute anchored eyes run summon minecraft:item ^ ^-0.3 ^ {Item:$(temp_item),Tags:["jbt_bundle_item"],PickupDelay:30}
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.4 summon minecraft:area_effect_cloud run data modify entity @e[tag=jbt_bundle_item,limit=1] Motion set from entity @s Pos
tag @e[tag=jbt_bundle_item] remove jbt_bundle_item