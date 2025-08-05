$execute if score $direction jbt.dummy matches 1 run return run setblock ~ ~ ~ $(block)[face=floor,facing=north] destroy
$execute if score $direction jbt.dummy matches 3 run return run setblock ~ ~ ~ $(block)[face=floor,facing=south] destroy
$execute if score $direction jbt.dummy matches 4 run return run setblock ~ ~ ~ $(block)[face=floor,facing=west] destroy
$execute if score $direction jbt.dummy matches 2 run return run setblock ~ ~ ~ $(block)[face=floor,facing=east] destroy