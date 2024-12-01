execute if score @s jbt_half matches 1 run return run function jbt:chisel/block/rotation/stairs/lower with storage jbt:chisel
execute if score @s jbt_half matches 2 run return run function jbt:chisel/block/rotation/stairs/upper with storage jbt:chisel
execute if score @s jbt_side matches 5 run return run function jbt:chisel/block/rotation/stairs/upper with storage jbt:chisel
execute if score @s jbt_side matches 6 run return run function jbt:chisel/block/rotation/stairs/lower with storage jbt:chisel
return fail