# swing (done here because of potential exit from reset)
function jbt.tape_measure:swing

# sneaking, try and kill tape selection on block
execute if predicate jbt.main:issneaking run return run kill @n[type=minecraft:item_display,tag=jbt.tape_selection,distance=..1]

# store block position
data remove storage jbt:temp tape
data modify storage jbt:temp tape.x set from storage jbt.iris:output TargetPosition.tile[0]
data modify storage jbt:temp tape.y set from storage jbt.iris:output TargetPosition.tile[1]
data modify storage jbt:temp tape.z set from storage jbt.iris:output TargetPosition.tile[2]

# continue
execute if predicate jbt.tape_measure:mainhand run return run function jbt.tape_measure:mainhand
execute if predicate jbt.tape_measure:offhand run function jbt.tape_measure:offhand