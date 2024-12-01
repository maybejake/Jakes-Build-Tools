$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[facing=north] replace
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[facing=south] replace
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[facing=west] replace
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[facing=east] replace
return fail