$execute if block ~ ~ ~ $(block)[axis=x] run return run setblock ~ ~ ~ $(block)[axis=y] replace
$execute if block ~ ~ ~ $(block)[axis=y] run return run setblock ~ ~ ~ $(block)[axis=z] replace
$execute if block ~ ~ ~ $(block)[axis=z] run return run setblock ~ ~ ~ $(block)[axis=x] replace
return fail