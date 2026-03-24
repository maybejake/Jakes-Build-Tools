execute if score $tape_selection_toggle jbt.dummy matches 1 run tellraw @s [{"text":"Tape selection display: "},{"text":"disabled","color":"red"}]
execute if score $tape_selection_toggle jbt.dummy matches 1 run function jbt.tape_measure:clear_tape_selections
execute if score $tape_selection_toggle jbt.dummy matches 1 run return run scoreboard players set $tape_selection_toggle jbt.dummy 0

tellraw @s [{"text":"Tape selection display: "},{"text":"enabled","color":"green"}]
scoreboard players set $tape_selection_toggle jbt.dummy 1