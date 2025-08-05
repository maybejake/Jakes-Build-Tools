execute if entity @s[gamemode=creative] run gamerule doTileDrops false

execute positioned ^ ^ ^-0.05 run function jbt.main:side/get

data modify storage jbt:temp chisel.chosen_block set from storage jbt:temp chisel.block
function jbt.main:rotation/check with storage jbt:temp chisel

execute if score $place_check jbt.dummy matches 0 run function jbt.chisel:block/place_normal with storage jbt:temp chisel
execute if score $tile_drops jbt.dummy matches 1 if entity @s[gamemode=creative] run gamerule doTileDrops true

execute if score $place_check jbt.dummy matches 1 run function jbt.chisel:block/remove_item with storage jbt:temp chisel