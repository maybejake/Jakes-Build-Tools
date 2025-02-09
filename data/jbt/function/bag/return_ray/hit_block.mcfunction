scoreboard players set @s jbt_bag_raycast_hit 1
tag @s remove jbt_bag_ray

function jbt:bag/return_ray/get_id
execute as @e[tag=jbt_bag_contained,predicate=jbt:idmatch,limit=1] run function jbt:bag/return_ray/setup_entity

playsound minecraft:item.bundle.drop_contents master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 20 force

execute if entity @s[predicate=jbt:bag/mainhand] run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":{"strings":["jbt:mob_bag_empty"]}}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]
execute if entity @s[predicate=jbt:bag/offhand] run item modify entity @s weapon.offhand [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":{"strings":["jbt:mob_bag_empty"]}}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]