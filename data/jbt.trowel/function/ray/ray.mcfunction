execute if block ~ ~ ~ #jbt.main:blocks unless block ^ ^ ^0.05 #jbt.main:blocks run return run function jbt.trowel:ray/hit
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach_tool positioned ^ ^ ^0.05 run function jbt.trowel:ray/ray