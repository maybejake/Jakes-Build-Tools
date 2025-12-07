execute if block ~ ~ ~ minecraft:barrier positioned ^ ^ ^-0.05 run return run function jbt.main:side/get
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach_tool positioned ^ ^ ^0.05 run function jbt.hammer:side/ray