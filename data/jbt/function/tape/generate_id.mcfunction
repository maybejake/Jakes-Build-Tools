execute store result score jbt score_storage run random value 1..9999999
execute if entity @e[type=minecraft:item_display,tag=jbt_tape_selection,predicate=jbt:idmatch,limit=1] run function jbt:tape/generate_id

execute store result storage jbt:tape id int 1 run scoreboard players get jbt score_storage