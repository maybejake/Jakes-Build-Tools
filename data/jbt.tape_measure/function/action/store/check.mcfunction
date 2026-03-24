function jbt.tape_measure:selection/clean

function jbt.tape_measure:generate_id
execute unless score $tape_selection_toggle jbt.dummy matches 0 run function jbt.tape_measure:selection/summon with storage jbt:temp tape

function jbt.tape_measure:sounds/out

execute if predicate jbt.tape_measure:mainhand run return run function jbt.tape_measure:action/store/mainhand with storage jbt:temp tape
execute if predicate jbt.tape_measure:offhand run function jbt.tape_measure:action/store/offhand with storage jbt:temp tape