execute as @e[type=minecraft:item_frame,tag=!jbt_non_magnet_frame] run function jbt.item_magnet:frame/check

execute store result score $tile_drops jbt.dummy run gamerule block_drops

schedule function jbt.main:tick_20 1s