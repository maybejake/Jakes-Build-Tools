execute unless block ~ ~ ~ #jbt.main:blocks run return run function jbt.chisel:ray/hit
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach_tool positioned ^ ^ ^0.05 run function jbt.chisel:ray/ray