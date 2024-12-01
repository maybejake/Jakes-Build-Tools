$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=north] replace
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=south] replace
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=west] replace
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[face=ceiling,facing=east] replace