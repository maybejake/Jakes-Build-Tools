#tape selection check
execute as @e[type=minecraft:item_display,tag=jbt_tape_selection] at @s if block ~ ~ ~ #jbt.main:blocks run kill @s

schedule function jbt.main:tick_2 2t