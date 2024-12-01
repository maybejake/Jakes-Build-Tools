execute if score jbt jbt_tape_selection_toggle matches 1 run tellraw @s [{"text":"JBT","color":"gold","bold":true},{"text":": Tape selection display ","color":"white","bold":false},{"text":"disabled","color":"red","bold":true},{"text":"!","color":"white","bold":false}]
execute if score jbt jbt_tape_selection_toggle matches 1 run function jbt:clear_tape_selections
execute if score jbt jbt_tape_selection_toggle matches 0 run tellraw @s [{"text":"JBT","color":"gold","bold":true},{"text":": Tape selection display ","color":"white","bold":false},{"text":"enabled","color":"green","bold":true},{"text":"!","color":"white","bold":false}]

execute if score jbt jbt_tape_selection_toggle matches 0 run scoreboard players set $temp jbt_tape_selection_toggle 1
execute if score jbt jbt_tape_selection_toggle matches 1 run scoreboard players set $temp jbt_tape_selection_toggle 0

scoreboard players operation jbt jbt_tape_selection_toggle = $temp jbt_tape_selection_toggle