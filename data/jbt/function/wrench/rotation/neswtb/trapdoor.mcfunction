$execute if block ~ ~ ~ $(block)[half=top,facing=north,open=false] run return run setblock ~ ~ ~ $(block)[half=top,facing=east,open=false] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=east,open=false] run return run setblock ~ ~ ~ $(block)[half=top,facing=south,open=false] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=south,open=false] run return run setblock ~ ~ ~ $(block)[half=top,facing=west,open=false] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=west,open=false] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=west,open=false] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=west,open=false] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=south,open=false] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=south,open=false] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=east,open=false] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=east,open=false] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=north,open=false] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=north,open=false] run return run setblock ~ ~ ~ $(block)[half=top,facing=north,open=false] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=north,open=true] run return run setblock ~ ~ ~ $(block)[half=top,facing=east,open=true] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=east,open=true] run return run setblock ~ ~ ~ $(block)[half=top,facing=south,open=true] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=south,open=true] run return run setblock ~ ~ ~ $(block)[half=top,facing=west,open=true] replace
$execute if block ~ ~ ~ $(block)[half=top,facing=west,open=true] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=west,open=true] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=west,open=true] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=south,open=true] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=south,open=true] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=east,open=true] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=east,open=true] run return run setblock ~ ~ ~ $(block)[half=bottom,facing=north,open=true] replace
$execute if block ~ ~ ~ $(block)[half=bottom,facing=north,open=true] run return run setblock ~ ~ ~ $(block)[half=top,facing=north,open=true] replace
return fail