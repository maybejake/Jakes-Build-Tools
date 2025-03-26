$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=south] destroy
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=north] destroy
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=east] destroy
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=west] destroy