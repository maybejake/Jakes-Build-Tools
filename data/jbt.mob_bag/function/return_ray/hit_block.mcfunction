function jbt.mob_bag:return_ray/get_id
execute as @e[tag=jbt_bag_contained,predicate=jbt.main:idmatch,limit=1] run function jbt.mob_bag:return_ray/setup_entity

playsound minecraft:item.bundle.drop_contents neutral @a ~ ~ ~ 2 0.7
playsound minecraft:entity.illusioner.cast_spell neutral @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 20 force

execute if entity @s[predicate=jbt.mob_bag:mainhand] run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_empty"}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]
execute if entity @s[predicate=jbt.mob_bag:offhand] run item modify entity @s weapon.offhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_empty"}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]