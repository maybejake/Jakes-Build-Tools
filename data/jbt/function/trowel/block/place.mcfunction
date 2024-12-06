function jbt:trowel/block/rotation/check with storage jbt:trowel
function jbt:direction/reset
execute if score @s jbt_place_check matches 0 run function jbt:trowel/block/place_normal with storage jbt:trowel
execute if score @s jbt_place_check matches 1 run function jbt:trowel/block/remove_item with storage jbt:trowel