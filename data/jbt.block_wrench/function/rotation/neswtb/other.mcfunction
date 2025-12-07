$execute if block ~ ~ ~ $(block)[half=top,facing=north] run return run setblock ~ ~ ~ $(block)[half=top,facing=east] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=east] run return run setblock ~ ~ ~ $(block)[half=top,facing=south] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=south] run return run setblock ~ ~ ~ $(block)[half=top,facing=west] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=west] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=west] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=west] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=south] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=south] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=east] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=east] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=north] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=north] run return run setblock ~ ~ ~ $(block)[half=top,facing=north] replace
return fail