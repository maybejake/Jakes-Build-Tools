$execute if score $direction jbt.dummy matches 1 run return run setblock ~ ~ ~ $(block)[facing=south] destroy
$execute if score $direction jbt.dummy matches 3 run return run setblock ~ ~ ~ $(block)[facing=north] destroy
$execute if score $direction jbt.dummy matches 4 run return run setblock ~ ~ ~ $(block)[facing=east] destroy
$execute if score $direction jbt.dummy matches 2 run return run setblock ~ ~ ~ $(block)[facing=west] destroy
return fail