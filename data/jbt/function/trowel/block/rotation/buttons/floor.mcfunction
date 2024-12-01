$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[face=floor,facing=north] replace
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[face=floor,facing=south] replace
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[face=floor,facing=west] replace
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[face=floor,facing=east] replace