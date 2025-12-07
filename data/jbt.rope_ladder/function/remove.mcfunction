scoreboard players remove $ladder_max jbt.dummy 1
clear @s minecraft:ladder[minecraft:custom_data~{jbt_ladder:1b}] 1

function jbt.rope_ladder:place/check

execute if block ~ ~-1 ~ #jbt.main:ladder if score $ladder_max jbt.dummy matches 1.. positioned ~ ~-1 ~ run function jbt.rope_ladder:loop