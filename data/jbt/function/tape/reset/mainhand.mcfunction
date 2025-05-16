function jbt:tape/selection/clean
execute if predicate jbt:tape/open/mainhand run function jbt:tape/sounds/in
execute unless predicate jbt:tape/open/mainhand run playsound minecraft:item.spyglass.use master @a ~ ~ ~ 1 1
item modify entity @s weapon.mainhand [{"function": "minecraft:set_custom_data","tag": "{jbt_tape_open:0b}"},{"function": "minecraft:set_lore","entity": "this","lore": [],"mode": "replace_all"},{"function": "minecraft:set_custom_model_data","strings":{"values":["jbt:tape_measure_in"],"mode": "replace_all"}}]