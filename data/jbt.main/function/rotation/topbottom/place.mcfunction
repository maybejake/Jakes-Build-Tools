execute if score $half jbt.dummy matches 1 run return run function jbt.main:rotation/topbottom/lower with storage jbt:temp rotation
execute if score $half jbt.dummy matches 2 run return run function jbt.main:rotation/topbottom/upper with storage jbt:temp rotation
return fail