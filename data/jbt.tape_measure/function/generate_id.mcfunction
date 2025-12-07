execute store result score $id jbt.dummy run random value 1..9999999
execute if entity @e[type=minecraft:item_display,tag=jbt_tape_selection,predicate=jbt.main:idmatch,limit=1] run function jbt.tape_measure:generate_id

execute store result storage jbt:temp tape.id int 1 run scoreboard players get $id jbt.dummy