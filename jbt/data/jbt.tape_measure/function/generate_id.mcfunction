execute store result score $id jbt.dummy run random value 1..2147483647
execute if entity @e[type=minecraft:item_display,tag=jbt.tape_selection,predicate=jbt.main:idmatch,limit=1] run function jbt.tape_measure:generate_id

execute store result storage jbt:temp tape.uid int 1 run scoreboard players get $id jbt.dummy