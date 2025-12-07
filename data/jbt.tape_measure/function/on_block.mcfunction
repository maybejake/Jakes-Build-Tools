data remove storage jbt:temp tape
execute if entity @s[tag=jbt_tape_reset] run return run kill @n[type=minecraft:item_display, tag=jbt_tape_selection, distance=..1]

data modify storage jbt:temp tape.x set from storage jbt.iris:output TargetPosition.tile[0]
data modify storage jbt:temp tape.y set from storage jbt.iris:output TargetPosition.tile[1]
data modify storage jbt:temp tape.z set from storage jbt.iris:output TargetPosition.tile[2]

execute if predicate jbt.tape_measure:open/both run return run function jbt.tape_measure:action/measure/check
function jbt.tape_measure:action/store/check