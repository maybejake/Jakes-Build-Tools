execute if score $side jbt.dummy matches 6 run return run function jbt.main:rotation/neswtb/trapdoor/top with storage jbt:temp rotation
execute if score $side jbt.dummy matches 5 run return run function jbt.main:rotation/neswtb/trapdoor/bottom with storage jbt:temp rotation
execute if score $half jbt.dummy matches 1 run return run function jbt.main:rotation/neswtb/trapdoor/lower with storage jbt:temp rotation
execute if score $half jbt.dummy matches 2 run return run function jbt.main:rotation/neswtb/trapdoor/upper with storage jbt:temp rotation
return fail