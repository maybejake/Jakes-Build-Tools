scoreboard players set @s jbt.click_check 0

#block if adventure mode
execute if entity @s[gamemode=adventure] run return fail

#store reach
execute store result score @s jbt.reach run attribute @s minecraft:block_interaction_range get 5
execute store result score @s jbt.reach_tool run attribute @s minecraft:block_interaction_range get 20

execute if function jbt.trowel:check run return 1
execute if function jbt.chisel:check run return 1
execute if function jbt.mob_bag:check run return 1
execute if function jbt.void_bucket:check run return 1
execute if function jbt.experience_flask:check run return 1
execute if function jbt.grass_starter:check run return 1
execute if function jbt.tape_measure:check run return 1
execute if function jbt.block_wrench:check run return 1