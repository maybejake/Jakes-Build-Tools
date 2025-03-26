execute if score @s jbt_side matches 1..4 run return run function jbt:rotation/neswfc/wall with storage jbt:rotation
execute if score @s jbt_side matches 5 run return run function jbt:rotation/neswfc/floor with storage jbt:rotation
execute if score @s jbt_side matches 6 run return run function jbt:rotation/neswfc/ceiling with storage jbt:rotation
return fail