scoreboard players remove @s jbt_ladder_max 1
clear @s minecraft:ladder[minecraft:custom_data={jbt_ladder:1b}] 1

function jbt:ladder/place/check

execute if block ~ ~-1 ~ #jbt:ladder if score @s jbt_ladder_max matches 0.. positioned ~ ~-1 ~ run function jbt:ladder/loop