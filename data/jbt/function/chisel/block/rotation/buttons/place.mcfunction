execute if score @s jbt_side matches 1..4 run return run function jbt:chisel/block/rotation/buttons/wall with storage jbt:chisel
execute if score @s jbt_side matches 5 run return run function jbt:chisel/block/rotation/buttons/ceiling with storage jbt:chisel
execute if score @s jbt_side matches 6 run return run function jbt:chisel/block/rotation/buttons/floor with storage jbt:chisel
return fail