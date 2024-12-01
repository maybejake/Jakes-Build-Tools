$execute if score @s jbt_side matches 1 run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=north] replace
$execute if score @s jbt_side matches 2 run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=south] replace
$execute if score @s jbt_side matches 3 run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=west] replace
$execute if score @s jbt_side matches 4 run return run setblock ~ ~ ~ $(chosen_block)[half=top,facing=east] replace