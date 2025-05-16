execute if entity @s[gamemode=creative] run gamerule doTileDrops false

execute positioned ^ ^ ^-0.05 run function jbt:side/get
function jbt:rotation/check with storage jbt:chisel

execute if score @s jbt_place_check matches 0 run function jbt:chisel/block/place_normal with storage jbt:chisel
execute if score jbt jbt_tile_drops matches 1 if entity @s[gamemode=creative] run gamerule doTileDrops true
execute if score @s jbt_place_check matches 1 run function jbt:chisel/block/remove_item with storage jbt:chisel