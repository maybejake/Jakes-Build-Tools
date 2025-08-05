scoreboard players set $rotation jbt.dummy 0
execute store result score $rotation jbt.dummy run function jbt.main:rotation/get/topbottom with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 1.. run return 1
execute store result score $rotation jbt.dummy run function jbt.main:rotation/get/xyz with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 1.. run return 1
execute store result score $rotation jbt.dummy run function jbt.main:rotation/get/neswud with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 1.. run return 1
execute store result score $rotation jbt.dummy run function jbt.main:rotation/get/neswfc with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 1.. run return 1
execute store result score $rotation jbt.dummy run function jbt.main:rotation/get/neswtb with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 1.. run return 1
execute store result score $rotation jbt.dummy run return run function jbt.main:rotation/get/nesw with storage jbt:temp rotation
return fail