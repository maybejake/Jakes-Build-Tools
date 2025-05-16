$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(block)[half=top,facing=south] destroy
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(block)[half=top,facing=north] destroy
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(block)[half=top,facing=east] destroy
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(block)[half=top,facing=west] destroy