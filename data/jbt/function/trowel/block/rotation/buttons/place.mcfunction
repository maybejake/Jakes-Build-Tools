execute if score @s jbt_side matches 1..4 run return run function jbt:trowel/block/rotation/buttons/wall with storage jbt:trowel
execute if score @s jbt_side matches 5 run return run function jbt:trowel/block/rotation/buttons/ceiling with storage jbt:trowel
execute if score @s jbt_side matches 6 run return run function jbt:trowel/block/rotation/buttons/floor with storage jbt:trowel
return fail