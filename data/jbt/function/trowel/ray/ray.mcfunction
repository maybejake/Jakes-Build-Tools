execute if block ~ ~ ~ #jbt:blocks unless block ^ ^ ^0.05 #jbt:blocks run function jbt:trowel/ray/hit
scoreboard players add @s jbt_trowel_raycast_distance 1

execute if score @s jbt_trowel_raycast_hit matches 0 if score @s jbt_trowel_raycast_distance < @s jbt_reach_tools positioned ^ ^ ^0.05 run function jbt:trowel/ray/ray
execute if score @s jbt_trowel_raycast_distance <= @s jbt_reach_tools run function jbt:trowel/ray/reset_hand_tag
execute if score @s jbt_trowel_raycast_hit matches 1 run function jbt:trowel/ray/reset_hand_tag