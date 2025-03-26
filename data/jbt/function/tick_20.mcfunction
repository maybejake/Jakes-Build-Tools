schedule function jbt:tick_20 1s

execute as @e[type=minecraft:item_frame,tag=!jbt_non_magnet_frame] run function jbt:magnet/frame/check

execute store result score jbt jbt_tile_drops run gamerule doTileDrops