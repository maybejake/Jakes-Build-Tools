execute at @n[type=item,nbt={Age:0s},distance=..2] run return run function jbt.hammer:ray/hit
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach_hammer positioned ^ ^ ^0.5 run function jbt.hammer:ray/ray