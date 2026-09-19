# reset sound
function jbt.tape_measure:sounds/reset

execute if predicate jbt.tape_measure:mainhand run return run function jbt.tape_measure:action/reset/mainhand
execute if predicate jbt.tape_measure:offhand run function jbt.tape_measure:action/reset/offhand