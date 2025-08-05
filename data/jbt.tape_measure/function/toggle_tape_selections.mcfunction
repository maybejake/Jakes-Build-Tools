execute if score $tape_selection_toggle jbt.dummy matches 1 run tellraw @s [{"text":"JBT","color":"gold","bold":true},{"text":": Tape selection display ","color":"white","bold":false},{"text":"disabled","color":"red","bold":true},{"text":"!","color":"white","bold":false}]
execute if score $tape_selection_toggle jbt.dummy matches 1 run function jbt.tape_measure:clear_tape_selections
execute if score $tape_selection_toggle jbt.dummy matches 0 run tellraw @s [{"text":"JBT","color":"gold","bold":true},{"text":": Tape selection display ","color":"white","bold":false},{"text":"enabled","color":"green","bold":true},{"text":"!","color":"white","bold":false}]

execute if score $tape_selection_toggle jbt.dummy matches 0 run return run scoreboard players set $tape_selection_toggle jbt.dummy 1
execute if score $tape_selection_toggle jbt.dummy matches 1 run return run scoreboard players set $tape_selection_toggle jbt.dummy 0