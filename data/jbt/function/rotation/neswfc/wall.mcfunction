$execute if score @s jbt_side matches 1 run return run setblock ~ ~ ~ $(block)[face=wall,facing=south] destroy
$execute if score @s jbt_side matches 2 run return run setblock ~ ~ ~ $(block)[face=wall,facing=north] destroy
$execute if score @s jbt_side matches 3 run return run setblock ~ ~ ~ $(block)[face=wall,facing=east] destroy
$execute if score @s jbt_side matches 4 run return run setblock ~ ~ ~ $(block)[face=wall,facing=west] destroy