$execute if score @s jbt_side matches 1..2 run return run setblock ~ ~ ~ $(chosen_block)[axis=z] destroy
$execute if score @s jbt_side matches 3..4 run return run setblock ~ ~ ~ $(chosen_block)[axis=x] destroy
$execute if score @s jbt_side matches 5..6 run return run setblock ~ ~ ~ $(chosen_block)[axis=y] destroy
return fail