execute if block ~ ~ ~ minecraft:ladder run return run function jbt.rope_ladder:ray/hit
scoreboard players add $raycast_distance jbt.dummy 1

execute if score $raycast_distance jbt.dummy < $reach_tool jbt.dummy positioned ^ ^ ^0.05 run function jbt.rope_ladder:ray/ray