schedule function jbt.main:tick_2 2t replace

#tape selection check
execute as @e[tag=jbt.tape_selection,predicate=!jbt.main:onblock,type=minecraft:item_display] at @s if block ~ ~ ~ #jbt.main:blocks run kill @s