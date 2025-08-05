execute if entity @s[gamemode=!creative] run function jbt.rope_ladder:remove
scoreboard players add @n[type=minecraft:marker,tag=jbt_ladder_stand_new] jbt.ladder_count 1

function jbt.rope_ladder:place/check

execute if block ~ ~-1 ~ #jbt.main:ladder if score $ladder_max jbt.dummy matches 1.. positioned ~ ~-1 ~ run function jbt.rope_ladder:loop