$execute if entity @s[tag=jbt_north] run return run setblock ~ ~ ~ $(block)[facing=south] destroy
$execute if entity @s[tag=jbt_south] run return run setblock ~ ~ ~ $(block)[facing=north] destroy
$execute if entity @s[tag=jbt_west] run return run setblock ~ ~ ~ $(block)[facing=east] destroy
$execute if entity @s[tag=jbt_east] run return run setblock ~ ~ ~ $(block)[facing=west] destroy
return fail