execute store result score jbt score_storage run random value 1..9999999
execute if entity @e[tag=jbt_bag_contained,predicate=jbt:idmatch,limit=1] run function jbt:bag/generate_id

execute store result storage jbt:bag id int 1 run scoreboard players get jbt score_storage