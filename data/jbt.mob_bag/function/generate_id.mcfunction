execute store result score $id jbt.dummy run random value 1..9999999
execute if entity @e[tag=jbt_bag_contained,predicate=jbt.main:idmatch,limit=1] run function jbt.mob_bag:generate_id

execute store result storage jbt:temp bag.id int 1 run scoreboard players get $id jbt.dummy