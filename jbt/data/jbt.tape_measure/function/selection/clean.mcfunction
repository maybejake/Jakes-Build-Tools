execute if predicate jbt.tape_measure:mainhand store result score $id jbt.dummy run data get entity @s SelectedItem.components."minecraft:custom_data".jbt.uid
execute if predicate jbt.tape_measure:offhand unless predicate jbt.tape_measure:mainhand store result score $id jbt.dummy run data get entity @s equipment.offhand.components."minecraft:custom_data".jbt.uid

kill @e[type=minecraft:item_display,tag=jbt.tape_selection,predicate=jbt.main:idmatch]