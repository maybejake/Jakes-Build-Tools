$execute if score $direction jbt.dummy matches 1 run return run setblock ~ ~ ~ $(block)[half=top,facing=north] destroy
$execute if score $direction jbt.dummy matches 3 run return run setblock ~ ~ ~ $(block)[half=top,facing=south] destroy
$execute if score $direction jbt.dummy matches 4 run return run setblock ~ ~ ~ $(block)[half=top,facing=west] destroy
$execute if score $direction jbt.dummy matches 2 run return run setblock ~ ~ ~ $(block)[half=top,facing=east] destroy