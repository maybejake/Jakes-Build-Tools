gamerule doTileDrops false

scoreboard players set $side jbt.dummy 0
function jbt.main:rotation/check with storage jbt:temp trowel

execute if score $place_check jbt.dummy matches 0 run function jbt.trowel:block/place_normal with storage jbt:temp trowel
execute if score $tile_drops jbt.dummy matches 1 run gamerule doTileDrops true

execute if score $place_check jbt.dummy matches 1 run function jbt.trowel:block/remove_item with storage jbt:temp trowel