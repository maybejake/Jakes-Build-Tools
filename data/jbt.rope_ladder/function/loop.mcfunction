execute if entity @s[gamemode=!creative] run clear @s minecraft:ladder[minecraft:custom_data~{jbt:{id:"rope_ladder"}}] 1

function jbt.rope_ladder:place/check
scoreboard players add $ladder_count jbt.dummy 1

execute if block ~ ~-1 ~ #jbt.main:ladder if score $ladder_max jbt.dummy > $ladder_count jbt.dummy positioned ~ ~-1 ~ run function jbt.rope_ladder:loop