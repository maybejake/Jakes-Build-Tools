execute if score @s jbt_half matches 1 run return run function jbt:chisel/block/rotation/trapdoors/lower with storage jbt:chisel
execute if score @s jbt_half matches 2 run return run function jbt:chisel/block/rotation/trapdoors/upper with storage jbt:chisel
execute if score @s jbt_side matches 5 run return run function jbt:chisel/block/rotation/trapdoors/top with storage jbt:chisel
execute if score @s jbt_side matches 6 run return run function jbt:chisel/block/rotation/trapdoors/bottom with storage jbt:chisel
return fail