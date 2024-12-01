function jbt:chisel/block/rotation/check with storage jbt:chisel
function jbt:direction/reset
execute if score @s jbt_place_check matches 1 run return run function jbt:chisel/block/remove_item with storage jbt:chisel
execute if score @s jbt_place_check matches 0 run function jbt:chisel/block/place_normal with storage jbt:chisel