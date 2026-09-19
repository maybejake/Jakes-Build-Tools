# get data
function jbt.main:loot_table/to_data {loot_table:"jbt.main:technical/get_slot/mainhand"}

# calculate
function jbt.tape_measure:action/measure/calculate

# store
item modify entity @s weapon.mainhand jbt.tape_measure:record