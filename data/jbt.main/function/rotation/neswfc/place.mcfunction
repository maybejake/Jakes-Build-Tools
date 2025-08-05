execute if score $side jbt.dummy matches 1..4 run return run function jbt.main:rotation/neswfc/wall with storage jbt:temp rotation
execute if score $side jbt.dummy matches 5 run return run function jbt.main:rotation/neswfc/floor with storage jbt:temp rotation
execute if score $side jbt.dummy matches 6 run return run function jbt.main:rotation/neswfc/ceiling with storage jbt:temp rotation
return fail