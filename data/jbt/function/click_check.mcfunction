scoreboard players set @s jbt_click_check 0

#block if adventure mode
execute if entity @s[gamemode=adventure] run return fail

#store reach
execute store result score @s jbt_reach run attribute @s minecraft:block_interaction_range get 5
execute store result score @s jbt_reach_tools run attribute @s minecraft:block_interaction_range get 20

function jbt:bag/check
function jbt:trowel/check
function jbt:chisel/check
function jbt:grass/check
function jbt:bucket/check
function jbt:flask/check
function jbt:tape/check