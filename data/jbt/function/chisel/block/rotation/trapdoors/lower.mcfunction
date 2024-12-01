$execute if score @s jbt_side matches 1 run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=north] destroy
$execute if score @s jbt_side matches 2 run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=south] destroy
$execute if score @s jbt_side matches 3 run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=west] destroy
$execute if score @s jbt_side matches 4 run return run setblock ~ ~ ~ $(chosen_block)[half=bottom,facing=east] destroy