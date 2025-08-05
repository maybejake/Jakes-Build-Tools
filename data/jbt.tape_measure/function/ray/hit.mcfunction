data remove storage jbt:temp tape
execute if entity @s[tag=jbt_tape_reset] run return run kill @n[type=minecraft:item_display, tag=jbt_tape_selection, distance=..1]

execute align xyz summon minecraft:marker run function jbt.tape_measure:ray/summon

execute if predicate jbt.tape_measure:open/both run return run function jbt.tape_measure:action/measure/check
function jbt.tape_measure:action/store/check
