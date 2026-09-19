# sound
function jbt.tape_measure:sounds/in

# get data
data modify storage jbt:temp tape.data set from storage jbt:temp loot_table.output.components."minecraft:custom_data".jbt.tape_measure

# summon selection if needed
execute store result score $id jbt.dummy run data get storage jbt:temp tape.data.uid
execute unless score $tape_selection_toggle jbt.dummy matches 0 run execute summon minecraft:item_display run function jbt.tape_measure:selection/setup

# calculate
data modify storage jbt:temp tape.x set compute default integer jbt.tape_measure:calculate/x
data modify storage jbt:temp tape.y set compute default integer jbt.tape_measure:calculate/y
data modify storage jbt:temp tape.z set compute default integer jbt.tape_measure:calculate/z

# format translation stuff
data remove storage jbt:temp tape.dimensions
execute unless data storage jbt:temp tape{x:1} run data modify storage jbt:temp tape.dimensions.values append from storage jbt:temp tape.x
execute unless data storage jbt:temp tape{z:1} run data modify storage jbt:temp tape.dimensions.values append from storage jbt:temp tape.z
execute unless data storage jbt:temp tape{y:1} run data modify storage jbt:temp tape.dimensions.values append from storage jbt:temp tape.y

data modify storage jbt:temp tape.dimensions.first set from storage jbt:temp tape.dimensions.values[0]
data modify storage jbt:temp tape.dimensions.second set from storage jbt:temp tape.dimensions.values[1]
data modify storage jbt:temp tape.dimensions.third set from storage jbt:temp tape.dimensions.values[2]

execute store result storage jbt:temp tape.dimensions.count int 1 run data get storage jbt:temp tape.dimensions.values

# title
execute if data storage jbt:temp tape.dimensions{count:1} run title @s actionbar {"storage":"jbt:temp","nbt":"tape.dimensions.first","plain":true}
execute if data storage jbt:temp tape.dimensions{count:2} run title @s actionbar {"translate":"item.jbt.tape_measure.tooltip.dimensions.2","with":[{"storage":"jbt:temp","nbt":"tape.dimensions.first","plain":true},{"storage":"jbt:temp","nbt":"tape.dimensions.second","plain":true}]}
execute if data storage jbt:temp tape.dimensions{count:3} run title @s actionbar {"translate":"item.jbt.tape_measure.tooltip.dimensions.3","with":[{"storage":"jbt:temp","nbt":"tape.dimensions.first","plain":true},{"storage":"jbt:temp","nbt":"tape.dimensions.second","plain":true},{"storage":"jbt:temp","nbt":"tape.dimensions.third","plain":true}]}