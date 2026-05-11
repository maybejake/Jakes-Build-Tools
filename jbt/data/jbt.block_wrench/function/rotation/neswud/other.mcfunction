$execute if block ~ ~ ~ $(block)[facing=north] run return run setblock ~ ~ ~ $(block)[facing=east] replace
$execute if block ~ ~ ~ $(block)[facing=east] run return run setblock ~ ~ ~ $(block)[facing=south] replace
$execute if block ~ ~ ~ $(block)[facing=south] run return run setblock ~ ~ ~ $(block)[facing=west] replace
$execute if block ~ ~ ~ $(block)[facing=west] run return run setblock ~ ~ ~ $(block)[facing=up] replace
$execute if block ~ ~ ~ $(block)[facing=up] run return run setblock ~ ~ ~ $(block)[facing=down] replace
$execute if block ~ ~ ~ $(block)[facing=down] run return run setblock ~ ~ ~ $(block)[facing=north] replace
return fail