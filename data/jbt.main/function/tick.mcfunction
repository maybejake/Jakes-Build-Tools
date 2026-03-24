#magnet frame effect
execute as @e[tag=jbt.magnet_frame,type=minecraft:item_frame] at @s run function jbt.item_magnet:frame/effect

#players
execute as @a run function jbt.main:player

#marker tick
execute as @e[tag=jbt.marker,type=minecraft:marker] run function jbt.main:marker