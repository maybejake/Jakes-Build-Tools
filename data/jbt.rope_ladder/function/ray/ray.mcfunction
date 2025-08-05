execute if block ~ ~ ~ minecraft:ladder run return run function jbt.rope_ladder:ray/hit
scoreboard players add @s jbt.raycast_distance 1

execute if score @s jbt.raycast_distance < @s jbt.reach_tool positioned ^ ^ ^0.05 run function jbt.rope_ladder:ray/ray