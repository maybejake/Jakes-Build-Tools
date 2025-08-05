#store reach
execute store result score @s jbt.reach_hammer run attribute @s minecraft:block_interaction_range get 2
execute store result score @s jbt.reach_tool run attribute @s minecraft:block_interaction_range get 20

#increase reach by 1 block due to rounding down
scoreboard players add @s jbt.reach_hammer 2
scoreboard players add @s jbt.reach_tool 20

#extend tool reach by two blocks as raycast starts 2 blocks behind head (2 * 20)
scoreboard players add @s jbt.reach_tool 40

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function jbt.hammer:ray/start