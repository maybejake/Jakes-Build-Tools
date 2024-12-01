$execute if score @s jbt_side matches 1..2 run return run setblock ~ ~ ~ $(chosen_block)[axis=z] replace
$execute if score @s jbt_side matches 3..4 run return run setblock ~ ~ ~ $(chosen_block)[axis=x] replace
$execute if score @s jbt_side matches 5..6 run return run setblock ~ ~ ~ $(chosen_block)[axis=y] replace
return fail