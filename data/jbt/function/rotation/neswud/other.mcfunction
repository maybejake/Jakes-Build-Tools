$execute if score @s jbt_side matches 1 run return run setblock ~ ~ ~ $(chosen_block)[facing=south] destroy
$execute if score @s jbt_side matches 2 run return run setblock ~ ~ ~ $(chosen_block)[facing=north] destroy
$execute if score @s jbt_side matches 3 run return run setblock ~ ~ ~ $(chosen_block)[facing=east] destroy
$execute if score @s jbt_side matches 4 run return run setblock ~ ~ ~ $(chosen_block)[facing=west] destroy
$execute if score @s jbt_side matches 5 run return run setblock ~ ~ ~ $(chosen_block)[facing=up] destroy
$execute if score @s jbt_side matches 6 run return run setblock ~ ~ ~ $(chosen_block)[facing=down] destroy
return fail