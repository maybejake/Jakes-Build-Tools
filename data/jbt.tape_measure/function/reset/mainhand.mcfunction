function jbt.tape_measure:selection/clean
execute if predicate jbt.tape_measure:open/mainhand at @s run function jbt.tape_measure:sounds/in
execute unless predicate jbt.tape_measure:open/mainhand at @s run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 1 1
item modify entity @s weapon.mainhand [{"function": "minecraft:set_custom_data","tag": "{jbt_tape_open:0b}"},{"function": "minecraft:set_lore","entity": "this","lore": [],"mode": "replace_all"},{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:tape_measure_in"}}]