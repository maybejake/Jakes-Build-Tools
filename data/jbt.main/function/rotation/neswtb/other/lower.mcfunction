$execute if score $side jbt.dummy matches 1 run return run setblock ~ ~ ~ $(block)[half=bottom,facing=north] destroy
$execute if score $side jbt.dummy matches 2 run return run setblock ~ ~ ~ $(block)[half=bottom,facing=south] destroy
$execute if score $side jbt.dummy matches 3 run return run setblock ~ ~ ~ $(block)[half=bottom,facing=west] destroy
$execute if score $side jbt.dummy matches 4 run return run setblock ~ ~ ~ $(block)[half=bottom,facing=east] destroy