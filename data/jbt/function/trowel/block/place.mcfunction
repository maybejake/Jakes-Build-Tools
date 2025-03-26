gamerule doTileDrops false
function jbt:rotation/check with storage jbt:trowel
execute if score jbt jbt_tile_drops matches 1 run gamerule doTileDrops true
execute if score @s jbt_place_check matches 0 run function jbt:trowel/block/place_normal with storage jbt:trowel
execute if score @s jbt_place_check matches 1 run function jbt:trowel/block/remove_item with storage jbt:trowel