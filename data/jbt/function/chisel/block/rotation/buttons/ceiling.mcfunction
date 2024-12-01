$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=north] destroy
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=south] destroy
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=west] destroy
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=east] destroy