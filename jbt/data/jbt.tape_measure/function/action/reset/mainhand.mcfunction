function jbt.main:loot_table/to_data {loot_table:"jbt.main:technical/get_slot/mainhand"}
function jbt.tape_measure:selection/clean

execute if predicate jbt.tape_measure:open/mainhand run function jbt.tape_measure:sounds/in

item modify entity @s weapon.mainhand jbt.tape_measure:reset