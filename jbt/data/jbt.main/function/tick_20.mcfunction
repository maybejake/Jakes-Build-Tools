schedule function jbt.main:tick_20 1s replace

tag @e[tag=jbt.magnet_frame,type=minecraft:item_frame] remove jbt.magnet_frame
tag @e[predicate=jbt.main:magnet_frame,type=minecraft:item_frame] add jbt.magnet_frame

execute store result score $tile_drops jbt.dummy run gamerule block_drops