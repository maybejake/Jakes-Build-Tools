function jbt:tape/selection/clean
execute if predicate jbt:tape/open/offhand run function jbt:tape/sounds/in
execute unless predicate jbt:tape/open/offhand run playsound minecraft:item.spyglass.use master @a ~ ~ ~ 1 1
item modify entity @s weapon.offhand [{"function": "minecraft:set_custom_data","tag": "{jbt_tape_open:0b}"},{"function": "minecraft:set_lore","entity": "this","lore": [],"mode": "replace_all"},{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:tape_measure_in"}}]