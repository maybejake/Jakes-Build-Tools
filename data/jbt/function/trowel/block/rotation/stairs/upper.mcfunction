$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=north] replace
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=south] replace
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=west] replace
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=east] replace