#store reach
execute store result score $reach_hammer jbt.dummy run attribute @s minecraft:block_interaction_range get 2

#increase reach by 1 block due to rounding down
scoreboard players add $reach_hammer jbt.dummy 2

scoreboard players set $raycast_distance jbt.dummy 0
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt.hammer:ray/ray