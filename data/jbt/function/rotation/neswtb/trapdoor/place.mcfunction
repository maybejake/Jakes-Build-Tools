execute if score @s jbt_side matches 6 run return run function jbt:rotation/neswtb/trapdoor/top with storage jbt:rotation
execute if score @s jbt_side matches 5 run return run function jbt:rotation/neswtb/trapdoor/bottom with storage jbt:rotation
execute if score @s jbt_half matches 1 run return run function jbt:rotation/neswtb/trapdoor/lower with storage jbt:rotation
execute if score @s jbt_half matches 2 run return run function jbt:rotation/neswtb/trapdoor/upper with storage jbt:rotation
return fail