function jbt.tape_measure:sounds/in
execute if predicate jbt.tape_measure:mainhand run return run function jbt.tape_measure:action/measure/mainhand with storage jbt:temp tape
execute if predicate jbt.tape_measure:offhand run function jbt.tape_measure:action/measure/offhand with storage jbt:temp tape