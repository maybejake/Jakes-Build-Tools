execute if block ~ ~ ~ minecraft:barrier run function jbt:hammer/side/hit
scoreboard players add @s jbt_hammer_raycast_distance 1

execute if score @s jbt_hammer_raycast_hit matches 0 if score @s jbt_hammer_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:hammer/side/ray