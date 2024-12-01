execute if score @s jbt_half matches 1 run return run function jbt:trowel/block/rotation/trapdoors/lower with storage jbt:trowel
execute if score @s jbt_half matches 2 run return run function jbt:trowel/block/rotation/trapdoors/upper with storage jbt:trowel
execute if score @s jbt_side matches 5 run return run function jbt:trowel/block/rotation/trapdoors/top with storage jbt:trowel
execute if score @s jbt_side matches 6 run return run function jbt:trowel/block/rotation/trapdoors/bottom with storage jbt:trowel
return fail