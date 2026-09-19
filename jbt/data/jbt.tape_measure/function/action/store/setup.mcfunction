# generate an id
function jbt.tape_measure:generate_id

# spawn a selection
execute unless score $tape_selection_toggle jbt.dummy matches 0 run function jbt.tape_measure:selection/summon with storage jbt:temp tape

# sound
function jbt.tape_measure:sounds/out

# title
title @s actionbar {"translate":"item.jbt.tape_measure.tooltip.coordinate","with":[{"storage":"jbt:temp","nbt":"tape.x","plain":true},{"storage":"jbt:temp","nbt":"tape.y","plain":true},{"storage":"jbt:temp","nbt":"tape.z","plain":true}]}