schedule function jbt.main:tick_2 2t replace

#tape selection check
execute as @e[tag=jbt.tape_selection,predicate=jbt.main:onair,type=minecraft:item_display] run kill @s