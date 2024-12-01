execute at @n[type=item,nbt={Age:0s},distance=..0.8] run function jbt:hammer/ray/hit
scoreboard players add @s jbt_hammer_raycast_distance 1

execute if score @s jbt_hammer_raycast_hit matches 0 if score @s jbt_hammer_raycast_distance < @s jbt_reach_hammer positioned ^ ^ ^0.5 run function jbt:hammer/ray/ray