execute if score $side jbt.dummy matches 6 run return run function jbt.main:rotation/neswtb/other/top with storage jbt:temp rotation
execute if score $side jbt.dummy matches 5 run return run function jbt.main:rotation/neswtb/other/bottom with storage jbt:temp rotation
execute if score $half jbt.dummy matches 1 run return run function jbt.main:rotation/neswtb/other/lower with storage jbt:temp rotation
execute if score $half jbt.dummy matches 2 run return run function jbt.main:rotation/neswtb/other/upper with storage jbt:temp rotation
return fail