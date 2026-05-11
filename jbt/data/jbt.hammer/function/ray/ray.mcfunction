execute at @n[type=minecraft:item,nbt={Age:0s},distance=..2] run return run function jbt.hammer:ray/hit
scoreboard players add $raycast_distance jbt.dummy 1

execute if score $raycast_distance jbt.dummy < $reach_hammer jbt.dummy positioned ^ ^ ^0.5 run function jbt.hammer:ray/ray