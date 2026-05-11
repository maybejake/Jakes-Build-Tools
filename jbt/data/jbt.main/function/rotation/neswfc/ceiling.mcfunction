$execute if score $direction jbt.dummy matches 1 run return run setblock ~ ~ ~ $(block)[face=ceiling,facing=north] destroy
$execute if score $direction jbt.dummy matches 3 run return run setblock ~ ~ ~ $(block)[face=ceiling,facing=south] destroy
$execute if score $direction jbt.dummy matches 4 run return run setblock ~ ~ ~ $(block)[face=ceiling,facing=west] destroy
$execute if score $direction jbt.dummy matches 2 run return run setblock ~ ~ ~ $(block)[face=ceiling,facing=east] destroy